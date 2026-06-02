import 'package:flutter/material.dart';
import 'package:home_bite/ApiServices.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Constants/ImageConstants.dart';
import 'package:home_bite/Responsive.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:home_bite/components/button.dart';
import 'package:home_bite/bottomnavigation.dart';
import 'package:sizer/sizer.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstants.SecondaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  Imageconstants.SIDEPIC,
                  fit: BoxFit.contain,
                  scale: 4,
                ),
              ],
            ),
            SizedBox(height: 7.h),
            Text(
              "Login With OTP",
              style: FontConstants.inter(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 3.h),
            OtpTextField(
              numberOfFields: 4,
              borderColor: Color.fromARGB(255, 255, 255, 255),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  },
                );
              }, // end onSubmit
            ),

            SizedBox(height: 4.h),
            Row(
              children: [
                SizedBox(width: 12.h),
                Text(
                  "Resend OTP in ",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 183, 182, 182),
                    fontSize: 17.sp,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "60 Seconds",
                    style: TextStyle(color: Colors.grey, fontSize: 17.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 17.h),
            Button(
              ButtonText: "NEXT",
              ButtonColor: Colorconstants.PrimaryColor,
              ButtononTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const BottomNavigation(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
