import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/button.dart';
import 'package:sizer/sizer.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: 21.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 17, 69, 19),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 6.h),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Add Payment Options",
                              style: FontConstants.inter(
                                fontSize: 17.sp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 27),
                          child: Text(
                            "Choose Your Payment Option",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 202, 201, 201),
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 13.h),
                Container(
                  height: 40.h,
                  width: 87.w,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.grey,
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
                          "Payment Method",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 0.5.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Prefered Payment Method",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Color.fromARGB(255, 81, 81, 81),
                          ),
                        ),
                      ),
                      SizedBox(height: 0.5.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Pay By UPI App",
                          style: FontConstants.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: 5.h,
                          width: 79.w,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 245, 245, 245),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromARGB(255, 225, 224, 224),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("assets/phonepey.png", scale: 2.5),
                              Text(
                                "PhonePe",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.sp,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 170),
                                child: Container(
                                  height: 2.5.h,
                                  width: 8.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 0.5.h),

                      SizedBox(height: 2.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: 5.h,
                          width: 79.w,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 245, 245, 245),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromARGB(255, 225, 224, 224),
                              width: 1,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("assets/gpay.png", scale: 2.5),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Google Pay",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.sp,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 150),
                                child: Container(
                                  height: 2.5.h,
                                  width: 8.w,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Credit & Debits Cards",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: 8.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFF0F0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 1.7.h),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "+ Add New Card",
                                  style: FontConstants.inter(
                                    color: Colors.blue,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "Save And pay Via Cards ",
                                  style: FontConstants.inter(fontSize: 16.sp),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(87.w, 4.8.h),
                    backgroundColor: Colorconstants.PrimaryColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Next"),
                ),
              ],
            ),
          ),
          Positioned(
            top: 150,
            left: 20,
            child: Container(
              height: 15.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(15),
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
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          "Delivery Address",
                          style: FontConstants.inter(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 120),
                        child: Text(
                          "Edit",
                          style: FontConstants.inter(
                            fontSize: 16.sp,
                            color: const Color.fromARGB(255, 18, 90, 21),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 12),
                        child: Icon(
                          Icons.border_color_outlined,
                          size: 21,
                          color: const Color.fromARGB(255, 18, 90, 21),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Address", style: TextStyle(fontSize: 17.sp)),
                  ),
                  SizedBox(height: 1.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Flat No. 104, Block C Lakeview Apartments Plot No. 27, Kondapur Main Road Kondapur",
                      style: TextStyle(fontSize: 15.sp),
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
