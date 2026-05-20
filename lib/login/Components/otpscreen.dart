import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Constants/ImageConstants.dart';
import 'package:home_bite/Responsive.dart';
import 'package:home_bite/components/button.dart';
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
      body: Column(
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
          SizedBox(height: 4.h),
          Padding(
            padding: const EdgeInsets.only(left: 110),
            child: Row(
              children: [
                Container(
                  height: 4.7.h,
                  width: 9.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 119, 119, 119),
                      width: 1.4,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                SizedBox(width: 4.w),
                Container(
                  height: 4.7.h,
                  width: 9.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 119, 119, 119),
                      width: 1.4,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                SizedBox(width: 4.w),
                Container(
                  height: 4.7.h,
                  width: 9.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 119, 119, 119),
                      width: 1.4,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 4.w),
                Container(
                  height: 4.7.h,
                  width: 9.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(255, 119, 119, 119),
                      width: 1.4,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.h),
          Row(
            children: [
              SizedBox(width: 12.h),
              Text(
                "Resend OTP in ",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.sp,
                  decoration: TextDecoration.underline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  "60 Seconds",
                  style: TextStyle(color: Colors.grey, fontSize: 16.sp),
                ),
              ),
            ],
          ),
          SizedBox(height: 17.h),
          Button(
            ButtonText: "NEXT",
            ButtonColor: Colorconstants.PrimaryColor,
            ButtononTap: () {},
          ),
        ],
      ),
    );
  }
}
