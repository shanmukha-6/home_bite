import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:sizer/sizer.dart';

class Subscriptionscreen extends StatefulWidget {
  Subscriptionscreen({Key? key}) : super(key: key);

  @override
  _SubscriptionscreenState createState() => _SubscriptionscreenState();
}

class _SubscriptionscreenState extends State<Subscriptionscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 14.h,
                width: 100.w,
                decoration: BoxDecoration(color: Colorconstants.PrimaryColor),
              ),
            ],
          ),
          Positioned(
            top: 50,
            left: 10,
            child: Container(
              height: 86.5.h,
              width: 95.w,
              decoration: BoxDecoration(
                color: const Color(0xFFF3FFF6),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 4,
                  ),
                ],
              ),

              child: Column(
                children: [
                  SizedBox(height: 0.5.h),
                  Text(
                    "Plan Details",
                    style: FontConstants.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 0.3.h),
                  Container(
                    height: 26.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Colors.grey,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.h),
                        Container(
                          height: 9.h,
                          width: 87.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(10),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.asset(
                                "assets/plan.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Whats Included",
                            style: FontConstants.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Perfect for short term Need",
                            style: FontConstants.inter(fontSize: 16.sp),
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 3.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE7FFE7),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.asset(
                                        "assets/right.png",
                                        scale: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Fresh Meal",
                                        style: FontConstants.inter(
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 3.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE7FFE7),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.asset(
                                        "assets/right.png",
                                        scale: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Customizable",
                                        style: FontConstants.inter(
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 3.h,
                                width: 26.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE7FFE7),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.asset(
                                        "assets/right.png",
                                        scale: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "No Commitment",
                                        style: FontConstants.inter(
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "₹999 / Week",
                                style: FontConstants.inter(
                                  color: Colorconstants.PrimaryColor,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 130),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  maximumSize: Size(120, 50),
                                  minimumSize: Size(100, 30),
                                  backgroundColor: Colorconstants.PrimaryColor,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      20,
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text("Choose Plan"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Container(
                    height: 28.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Colors.grey,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.h),
                        Container(
                          height: 9.h,
                          width: 87.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(10),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.asset(
                                "assets/plan.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Monthly Plan",
                            style: FontConstants.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "30 Days .1Meal / Day",
                            style: FontConstants.inter(fontSize: 16.sp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Most Popular .Great Value",
                            style: FontConstants.inter(fontSize: 16.sp),
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 3.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE7FFE7),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.asset(
                                        "assets/right.png",
                                        scale: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Fresh Meal",
                                        style: FontConstants.inter(
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 3.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE7FFE7),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.asset(
                                        "assets/right.png",
                                        scale: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Customizable",
                                        style: FontConstants.inter(
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 3.h,
                                width: 26.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE7FFE7),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.asset(
                                        "assets/right.png",
                                        scale: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "No Commitment",
                                        style: FontConstants.inter(
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "₹3,333 / Month Save ₹2000",
                                style: FontConstants.inter(
                                  color: Colorconstants.PrimaryColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              height: 2.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 2, top: 5),
                                child: Text(
                                  "Save₹2000",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11.sp,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  maximumSize: Size(120, 50),
                                  minimumSize: Size(100, 30),
                                  backgroundColor: Colorconstants.PrimaryColor,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      20,
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text("Choose Plan"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Container(
                    height: 26.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Colors.grey,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.h),
                        Container(
                          height: 9.h,
                          width: 87.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(10),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Image.asset(
                                "assets/plan.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Family Plan",
                            style: FontConstants.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "30 Days .Up To 4 meals / Day",
                            style: FontConstants.inter(fontSize: 16.sp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "For families that eat together",
                            style: FontConstants.inter(fontSize: 16.sp),
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 3.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE7FFE7),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.asset(
                                        "assets/right.png",
                                        scale: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Fresh Meal",
                                        style: FontConstants.inter(
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 3.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE7FFE7),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.asset(
                                        "assets/right.png",
                                        scale: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "Customizable",
                                        style: FontConstants.inter(
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 3.h,
                                width: 26.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE7FFE7),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.asset(
                                        "assets/right.png",
                                        scale: 3,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "No Commitment",
                                        style: FontConstants.inter(
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 0.3.h),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "₹6,999 / Month",
                                style: FontConstants.inter(
                                  color: Colorconstants.PrimaryColor,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              height: 2.h,
                              width: 12.w,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5, top: 5),
                                child: Text(
                                  "Save₹2000",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11.sp,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 55),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  maximumSize: Size(120, 50),
                                  minimumSize: Size(100, 30),
                                  backgroundColor: Colorconstants.PrimaryColor,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      20,
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text("Choose Plan"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 910,
            left: 20,

            child: Container(
              height: 5.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Colorconstants.PrimaryColor,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Pre Order Food",
                      style: FontConstants.inter(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        minimumSize: Size(70, 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Schedule",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
