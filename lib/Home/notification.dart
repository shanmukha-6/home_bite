import 'package:flutter/material.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 13.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colorconstants.PrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(6),
                bottomRight: Radius.circular(6),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 27,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "Notifcations",
                      style: FontConstants.inter(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text(
                    "Your Incoming Notfications",
                    style: FontConstants.inter(
                      color: const Color.fromARGB(255, 225, 225, 225),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Notifications",
              style: FontConstants.inter(
                fontSize: 19.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 1.h),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Stack(
              children: [
                Container(
                  height: 7.8.h,
                  width: 92.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 1.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Your Order Is Delivered",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 0.8.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Order ORD1002 Is Veg Salad",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color.fromARGB(255, 75, 75, 75),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 28,
                  left: 320,
                  child: Text("2 Min Ago", style: TextStyle(fontSize: 16.sp)),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.h),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Stack(
              children: [
                Container(
                  height: 7.8.h,
                  width: 92.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 1.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Your Order Is Delivered",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 0.8.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Order ORD1002 Is Veg Salad",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color.fromARGB(255, 75, 75, 75),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 28,
                  left: 320,
                  child: Text("2 Min Ago", style: TextStyle(fontSize: 16.sp)),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.h),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Stack(
              children: [
                Container(
                  height: 7.8.h,
                  width: 92.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 1.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Your Order Is Delivered",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 0.8.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Order ORD1002 Is Veg Salad",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color.fromARGB(255, 75, 75, 75),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 28,
                  left: 320,
                  child: Text("2 Min Ago", style: TextStyle(fontSize: 16.sp)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
