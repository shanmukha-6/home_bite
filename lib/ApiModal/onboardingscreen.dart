import 'dart:async';
import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Constants/ImageConstants.dart';
import 'package:home_bite/login/loginscreen.dart';
import 'package:sizer/sizer.dart';

class OnBoardingscreen extends StatefulWidget {
  OnBoardingscreen({Key? key}) : super(key: key);

  @override
  _OnBoardingscreenState createState() => _OnBoardingscreenState();
}

class _OnBoardingscreenState extends State<OnBoardingscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset(
              Imageconstants.LOGIN,
              fit: BoxFit.contain,
              scale: 0.8,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            height: 21.h,
            width: 75.w,
            decoration: BoxDecoration(
              color: Colorconstants.LightGreen,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(height: 2.h),
                Text(
                  "Make Your Own food ",
                  style: FontConstants.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Stay At Home",
                  style: FontConstants.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  "Select your preferred dish from local",
                  style: FontConstants.inter(fontSize: 16.sp),
                ),
                Text(
                  "home chefs and enjoy a culinary ",
                  style: FontConstants.inter(fontSize: 16.sp),
                ),
                Text(
                  "experience today! ",
                  style: FontConstants.inter(fontSize: 16.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
