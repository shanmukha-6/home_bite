import 'package:flutter/material.dart';
import 'package:home_bite/button.dart';
import 'package:sizer/sizer.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';

class OrderScreen extends StatefulWidget {
  OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 13.h,
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
                          size: 26,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Order History",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Icon(
                        Icons.border_color,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Text(
                    "Your Completed Orders",
                    style: TextStyle(color: Colors.white, fontSize: 14.sp),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.h),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Order History",
              style: FontConstants.inter(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 1.5.h),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 33.h,
              width: 95.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(10),
                          child: Image.asset(
                            "assets/fullbriyani.png",
                            scale: 5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Biryani Bliss Kitchen",
                              style: FontConstants.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Manikonda,Hyderabad",
                              style: FontConstants.inter(
                                fontSize: 15.sp,
                                color: const Color.fromARGB(255, 73, 73, 73),
                              ),
                            ),
                            Text(
                              "Order ID : ORD1002",
                              style: FontConstants.inter(
                                fontSize: 15.sp,
                                color: const Color.fromARGB(255, 73, 73, 73),
                              ),
                            ),
                            Text(
                              "Item Total : ₹200",
                              style: FontConstants.inter(
                                fontSize: 15.sp,
                                color: const Color.fromARGB(255, 73, 73, 73),
                              ),
                            ),
                            Text(
                              "Payment : UPI",
                              style: FontConstants.inter(
                                fontSize: 15.sp,
                                color: const Color.fromARGB(255, 73, 73, 73),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "  ---------------------------------------------------------------------",
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Date : Feb 23,2026 At 07:35 PM"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Phone Number : 63046784.."),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Deliver To : Flat No. 101, Green View Apartment,Hyderabad",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Packing Charges : ₹20"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Delivery Charges : ₹20"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Grand Total : ₹240",
                      style: FontConstants.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colorconstants.PrimaryColor,
                        foregroundColor: Colors.white,
                        minimumSize: Size(380, 50),
                        maximumSize: Size(400, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Repeat Order"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.5.h),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 33.h,
              width: 95.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(10),
                          child: Image.asset(
                            "assets/fullbriyani.png",
                            scale: 5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Biryani Bliss Kitchen",
                              style: FontConstants.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Manikonda,Hyderabad",
                              style: FontConstants.inter(
                                fontSize: 15.sp,
                                color: const Color.fromARGB(255, 73, 73, 73),
                              ),
                            ),
                            Text(
                              "Order ID : ORD1002",
                              style: FontConstants.inter(
                                fontSize: 15.sp,
                                color: const Color.fromARGB(255, 73, 73, 73),
                              ),
                            ),
                            Text(
                              "Item Total : ₹200",
                              style: FontConstants.inter(
                                fontSize: 15.sp,
                                color: const Color.fromARGB(255, 73, 73, 73),
                              ),
                            ),
                            Text(
                              "Payment : UPI",
                              style: FontConstants.inter(
                                fontSize: 15.sp,
                                color: const Color.fromARGB(255, 73, 73, 73),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "  ---------------------------------------------------------------------",
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Date : Feb 23,2026 At 07:35 PM"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Phone Number : 63046784.."),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Deliver To : Flat No. 101, Green View Apartment,Hyderabad",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Packing Charges : ₹20"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Delivery Charges : ₹20"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Grand Total : ₹240",
                      style: FontConstants.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colorconstants.PrimaryColor,
                        foregroundColor: Colors.white,
                        minimumSize: Size(380, 50),
                        maximumSize: Size(400, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Repeat Order"),
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
