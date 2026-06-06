import 'dart:async';
import 'package:flutter/material.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/ImageConstants.dart';
import 'package:home_bite/briyaniComponents/reviewscreen.dart';
import 'package:sizer/sizer.dart';

class DeliveredScreen extends StatefulWidget {
  DeliveredScreen({Key? key}) : super(key: key);

  @override
  _DeliveredScreenState createState() => _DeliveredScreenState();
}

class _DeliveredScreenState extends State<DeliveredScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => Reviewscreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 12.h,
            width: 100.w,
            decoration: BoxDecoration(color: Colorconstants.PrimaryColor),
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
                          size: 27,
                        ),
                      ),
                    ),
                    Text(
                      " Delivered",
                      style: FontConstants.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    "Your homemade meal is delivered",
                    style: FontConstants.inter(
                      fontSize: 15.sp,

                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.h),
          Image.asset("assets/deliverboy.png", scale: 3),
          SizedBox(height: 2.h),
          Text(
            "Order Delivered!",
            style: FontConstants.inter(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            "Hope you enjoyed your meal. Rate your",
            style: TextStyle(fontSize: 16.sp),
          ),
          Text("experience!", style: TextStyle(fontSize: 16.sp)),
          Divider(color: Colors.grey, height: 10, indent: 30, endIndent: 30),
          SizedBox(height: 2.h),
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size: 22.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size: 22.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size: 22.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size: 22.sp,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size: 22.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
