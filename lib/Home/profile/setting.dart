import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:sizer/sizer.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 12.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Colorconstants.PrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Settings",
                            style: FontConstants.inter(
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 54),
                      child: Text(
                        "Your Account Settings",
                        style: TextStyle(color: Colors.white, fontSize: 15.sp),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Settings",
                  style: FontConstants.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 12.h,
                  width: 95.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Subscription",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Subscribe For Offers",
                          style: FontConstants.inter(fontSize: 15.sp),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: 3.h,
                          width: 10.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colorconstants.PrimaryColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5, top: 3),
                            child: Text(
                              "Know More",
                              style: FontConstants.inter(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Other Setting",
                  style: FontConstants.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 11.h,
                  width: 95.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 8),
                            child: Image.asset("assets/key.png", scale: 4),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              "Language",
                              style: FontConstants.inter(fontSize: 16.sp),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Privacy & Security",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset("assets/globe.png", scale: 4),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Permissions",
                              style: TextStyle(fontSize: 16.sp),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 190,
            left: 300,
            child: Image.asset("assets/gift.png", scale: 4),
          ),
        ],
      ),
    );
  }
}
