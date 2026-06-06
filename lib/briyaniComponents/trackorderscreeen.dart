import 'package:flutter/material.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/briyaniComponents/delivered.dart';
import 'package:sizer/sizer.dart';
import 'dart:async';

class Trackorderscreeen extends StatefulWidget {
  Trackorderscreeen({Key? key}) : super(key: key);

  @override
  _TrackorderscreeenState createState() => _TrackorderscreeenState();
}

class _TrackorderscreeenState extends State<Trackorderscreeen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => DeliveredScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 11.h,
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
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "Track Yur Order",
                      style: FontConstants.inter(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    "Order Your Daily Meal With Us ",
                    style: FontConstants.inter(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 232, 232, 232),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 0.5.h),
          Text(
            "Track Your Order",
            style: FontConstants.inter(
              color: Colorconstants.PrimaryColor,
              fontSize: 21.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 0.4.h),
          Text(
            "Real-time updates on your meal preparation",
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 0.5.h),
          Stack(
            children: [
              Container(
                height: 13.h,
                width: 99.w,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Image.network(
                  "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 80,
                left: 10,
                child: Container(
                  height: 2.h,
                  width: 19.w,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 91, 207, 95),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 1.5),
                    child: Text(
                      "In Progress",
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 10,
                child: Text(
                  "Estimated delivery : 07:00 AM",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Container(
            height: 9.h,
            width: 75.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 11,
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 1.4.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text("#RDDC12", style: TextStyle(fontSize: 16.sp)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text("Serves", style: TextStyle(fontSize: 16.sp)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text("Price", style: TextStyle(fontSize: 16.sp)),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 37),
                      child: Text(
                        "Order ID",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Text("2", style: TextStyle(fontSize: 16.sp)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 74),
                      child: Text("₹2000", style: TextStyle(fontSize: 16.sp)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 1.5.h),
          Text("Order Timeline ", style: FontConstants.inter(fontSize: 17.sp)),
          SizedBox(height: 1.h),
          timelineItem(
            "Order Confirmed",
            "Chef accepted your order",
            "2:30 PM",
          ),

          timelineItem(
            "Cooking in Progress",
            "Your delicious meal is being prepared",
            "4:00 PM",
          ),

          timelineItem(
            "Delivery Boy Reached",
            "Delivery Boy Reached at Reastaurant",
            "5:30 PM",
          ),

          timelineItem(
            "Delivery Boy Received Your Order",
            "Delivery Boy Reached at Reastaurant",
            "6:50 PM",
          ),
          timelineItem(
            "Your Order Is On The Way",
            "Delivery Boy Reached at Reastaurant",
            "6:50 PM",
          ),
          timelineItem("Delivered", "Enjoy Your Meal", "6:50 PM"),
          SizedBox(height: 2.h),
          Container(
            height: 8.h,
            width: 90.w,
            decoration: BoxDecoration(
              color: Color(0xFFFFEAEA),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 0.5.h),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    " Chef's Note",
                    style: FontConstants.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                ),
                SizedBox(height: 0.5.h),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Using the freshest ingredients for your celebration. Can't wait for you to taste it! 👨‍🍳",
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

Widget timelineItem(String title, String subtitle, String time) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            height: 30,
            width: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 1.5),
            ),
            child: const Icon(Icons.check, color: Colors.green, size: 18),
          ),
        ),

        const SizedBox(width: 15),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 4),

              Text(
                subtitle,
                style: const TextStyle(color: Colors.black54, fontSize: 14),
              ),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Text(
            time,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ],
    ),
  );
}
