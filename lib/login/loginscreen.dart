import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Constants/ImageConstants.dart';
import 'package:home_bite/button.dart';

import 'package:home_bite/login/constanst/otpscreen.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final isCompact = screenHeight < 700;

    final topImageHeight = isCompact ? 12.h : 16.h;
    final titleGap = isCompact ? 3.h : 5.h;
    final fieldsGap = isCompact ? 4.h : 7.h;
    final sectionGap = isCompact ? 3.h : 5.h;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colorconstants.SecondaryColor,

      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.viewInsetsOf(context).bottom + 2.h,
            ),

            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Align(
                    alignment: Alignment.centerRight,

                    child: SizedBox(
                      height: topImageHeight,
                      width: 36.w,

                      child: Image.asset(
                        Imageconstants.SIDEIMAGE,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  SizedBox(height: titleGap),

                  Text(
                    "LogIn To Your",
                    style: FontConstants.inter(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  Text(
                    "Account",
                    style: FontConstants.inter(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  SizedBox(height: fieldsGap),

                  // PHONE NUMBER FIELD
                  Container(
                    height: 5.5.h,
                    width: 85.w,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                    ),

                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      maxLength: 10,

                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.digitsOnly,
                      ],

                      decoration: InputDecoration(
                        hintText: "Enter your phone number",
                        counterText: "",

                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 12,
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),

                        filled: true,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),

                  SizedBox(height: 2.h),

                  // PASSWORD FIELD
                  Container(
                    height: 5.5.h,
                    width: 85.w,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                    ),

                    child: TextFormField(
                      obscureText: true,

                      decoration: InputDecoration(
                        hintText: "Enter your password",

                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 12,
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),

                        filled: true,
                        fillColor: Colors.transparent,
                      ),
                    ),
                  ),

                  SizedBox(height: 3.h),

                  // CHECKBOX + FORGOT PASSWORD
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.w),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              activeColor: Colors.black,

                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),

                            Text(
                              "Remember Me",

                              style: FontConstants.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        Text(
                          "Forgot Password?",

                          style: FontConstants.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 16, 16, 16),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: sectionGap),

                  // LOGIN BUTTON
                  Button(
                    ButtonColor: Colorconstants.PrimaryColor,
                    ButtonText: "Login",
                    ButtononTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => OtpScreen()),
                      );
                    },
                  ),

                  SizedBox(height: 3.h),

                  Text("or Login with", style: TextStyle(fontSize: 16.sp)),

                  SizedBox(height: 2.h),

                  // GOOGLE BUTTON
                  Container(
                    height: 5.5.h,
                    width: 65.w,

                    decoration: BoxDecoration(
                      color: Colorconstants.SecondaryColor,

                      border: Border.all(
                        color: const Color.fromARGB(255, 115, 114, 114),
                        width: 2,
                      ),

                      borderRadius: BorderRadius.circular(25),
                    ),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 17),

                          child: Image.asset(Imageconstants.GOOGLE, scale: 2.7),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),

                          child: Text(
                            "Continue With Google",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 2.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
