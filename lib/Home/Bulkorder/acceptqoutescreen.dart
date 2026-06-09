import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/button.dart';
import 'package:sizer/sizer.dart';

class Acceptqoutescreen extends StatefulWidget {
  Acceptqoutescreen({Key? key}) : super(key: key);

  @override
  _AcceptqoutescreenState createState() => _AcceptqoutescreenState();
}

class _AcceptqoutescreenState extends State<Acceptqoutescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 14.h,
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
                          size: 28,
                        ),
                      ),
                    ),
                    Text(
                      "Accept Quote",
                      style: FontConstants.inter(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48),
                  child: Text(
                    "Chef Quote",
                    style: FontConstants.inter(
                      fontSize: 15.sp,

                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          Image.asset("assets/circletick.png", scale: 4),
          SizedBox(height: 0.6.h),
          Text(
            "Your Quote For Festival Sweets (10k) \n   Has Been Sent To The Customer ",
          ),
          SizedBox(height: 3.h),
          Container(
            height: 13.h,
            width: 90.w,
            decoration: BoxDecoration(
              color: Color(0xFFD9FFE3),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                SizedBox(height: 0.6.h),
                Text(
                  "Quote Summary",
                  style: FontConstants.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1.h),
                Text(
                  "Price Per Plate :₹200",
                  style: FontConstants.inter(
                    fontSize: 16.sp,
                    color: Color(0xFF606060),
                  ),
                ),
                SizedBox(height: 0.8.h),
                Text(
                  "Total Price :₹2000",
                  style: FontConstants.inter(
                    fontSize: 16.sp,
                    color: Color(0xFF606060),
                  ),
                ),
                SizedBox(height: 0.8.h),
                Text(
                  "Delivery Time :12 Jan 2026 12:00 AM",
                  style: FontConstants.inter(
                    fontSize: 16.sp,
                    color: Color(0xFF606060),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.h),
          Button(
            ButtonText: "Accept And Make Payment",
            ButtonColor: Colorconstants.PrimaryColor,
            ButtononTap: () {},
          ),
          SizedBox(height: 2.h),
          Button(
            ButtonText: "Reject",
            ButtonColor: Colors.red,
            ButtononTap: () {},
          ),
        ],
      ),
    );
  }
}
