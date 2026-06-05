import 'dart:async';
import 'package:flutter/material.dart';
import 'package:home_bite/ApiModal/onboardingscreen.dart';
import 'package:home_bite/Responsive.dart';
import 'package:home_bite/Constants/ImageConstants.dart';

import 'package:sizer/sizer.dart';

class splashscreen extends StatefulWidget {
  splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => OnBoardingscreen()));
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: 100.w,
          child: Image.asset(Imageconstants.LOGO, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
