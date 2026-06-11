import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/briyaniComponents/paymentoption.dart';
import 'package:sizer/sizer.dart';

class Subscribecustomscreen extends StatefulWidget {
  Subscribecustomscreen({Key? key}) : super(key: key);

  @override
  _SubscribecustomscreenState createState() => _SubscribecustomscreenState();
}

class _SubscribecustomscreenState extends State<Subscribecustomscreen> {
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
                    SizedBox(height: 3.5.h),
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
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 70,
            left: 10,
            child: Container(
              height: 85.h,
              width: 95.w,
              decoration: BoxDecoration(
                color: Color(0xFFF3FFF6),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 0.5.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Text(
                      "Customize Your Plan",
                      style: FontConstants.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 0.1.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: Container(
                      height: 80.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 1.h),
                            Text(
                              "What's Included",
                              style: FontConstants.inter(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Row(
                              children: [
                                Image.asset("assets/right.png", scale: 3),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Daily Ratating Menu With 20+ Dishes",
                                    style: TextStyle(fontSize: 15.sp),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              children: [
                                Image.asset("assets/right.png", scale: 3),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Custom Preferences(Spice,Diet,Ingredients)",
                                    style: TextStyle(fontSize: 15.sp),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              children: [
                                Image.asset("assets/right.png", scale: 3),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Pause/Skip Up To 5 days/Month",
                                    style: TextStyle(fontSize: 15.sp),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              children: [
                                Image.asset("assets/right.png", scale: 3),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Hygiene Packing And On Time Delivery",
                                    style: TextStyle(fontSize: 15.sp),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              "Select Meal Preferences",
                              style: FontConstants.inter(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 0.6.h),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    10,
                                  ),
                                  child: Image.asset(
                                    "assets/veg.png",
                                    scale: 4,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      10,
                                    ),
                                    child: Image.asset(
                                      "assets/nonveg.png",
                                      scale: 4,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      10,
                                    ),
                                    child: Image.asset(
                                      "assets/egg1.png",
                                      scale: 4,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      10,
                                    ),
                                    child: Image.asset(
                                      "assets/dunne.png",
                                      scale: 4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Veg"),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Text("NonVeg"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text("Egg"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text("Briyani"),
                                ),
                              ],
                            ),
                            SizedBox(height: 1.h),
                            Text(
                              "Spice Level",
                              style: FontConstants.inter(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Container(
                                    height: 2.7.h,
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEFFF0),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                          255,
                                          88,
                                          88,
                                          88,
                                        ),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 13,
                                          ),
                                          child: Text(
                                            "Medium",
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.grey,
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
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                          255,
                                          230,
                                          230,
                                          230,
                                        ),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 23,
                                          ),
                                          child: Text(
                                            "Spicy",
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.grey,
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
                                    width: 25.w,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                          255,
                                          230,
                                          230,
                                          230,
                                        ),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 13,
                                          ),
                                          child: Text(
                                            "Extra Spicy",
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                              color: Colors.grey,
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
                            Text(
                              "Diet Preferences",
                              style: FontConstants.inter(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Container(
                                    height: 2.7.h,
                                    width: 15.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEFFF0),
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                          255,
                                          88,
                                          88,
                                          88,
                                        ),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8,
                                          ),
                                          child: Text(
                                            "Normal",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Container(
                                    height: 3.h,
                                    width: 15.w,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                          255,
                                          230,
                                          230,
                                          230,
                                        ),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 13,
                                          ),
                                          child: Text(
                                            "Spicy",
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Container(
                                    height: 3.h,
                                    width: 19.w,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                          255,
                                          230,
                                          230,
                                          230,
                                        ),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8,
                                          ),
                                          child: Text(
                                            "Extra Spicy",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Container(
                                    height: 3.h,
                                    width: 19.w,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                          255,
                                          172,
                                          171,
                                          171,
                                        ),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8,
                                          ),
                                          child: Text(
                                            "High Protein",
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 0.7.h),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Container(
                                height: 3.h,
                                width: 19.w,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                      255,
                                      230,
                                      230,
                                      230,
                                    ),
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        "High Protein",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 0.6.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.message_outlined,
                                  color: Colors.black,
                                  size: 29,
                                ),
                                Text(
                                  " Allergies/Avoid",
                                  style: FontConstants.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 0.8.h),
                            Text(
                              "Let Us Know What To Avoid In Your Meal",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15.sp,
                              ),
                            ),

                            SizedBox(height: 1.h),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Container(
                                height: 5.h,
                                width: 92.w,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: "Eg.Nuts,Glutons,Onions",
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          134,
                                          133,
                                          133,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        borderSide: BorderSide(
                                          color: Colorconstants.PrimaryColor,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 0.6.h),
                            Row(
                              children: [
                                Icon(
                                  Icons.message_outlined,
                                  color: Colors.black,
                                  size: 29,
                                ),
                                Text(
                                  " Add A Note( Optional)",
                                  style: FontConstants.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 1.h),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Container(
                                height: 5.h,
                                width: 90.w,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFFDFD),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText:
                                          "Any Specific Request? We Would Like To Know",
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(
                                          255,
                                          149,
                                          149,
                                          149,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        borderSide: const BorderSide(
                                          color: Color(0xFF064B18),
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Container(
                              height: 12.h,
                              width: 86.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                              ),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 0.5.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          "Monthly Plan",
                                          style: FontConstants.inter(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 10,
                                        ),
                                        child: Text(
                                          "₹2000",
                                          style: FontConstants.inter(
                                            color: Colorconstants.PrimaryColor,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 0.9.h),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      "1 Meal/Day . 30 Days",
                                      style: FontConstants.inter(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 0.7.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          'Delivery',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 30,
                                        ),
                                        child: Text(
                                          'Free',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 0.9.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          'Total Payble',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                        ),
                                        child: Text(
                                          '₹1000',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14.sp,
                                          ),
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
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 910,
            left: 19,
            child: Container(
              height: 5.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Colorconstants.PrimaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Pay",
                      style: FontConstants.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PaymentScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 3.h,
                        width: 18.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14, top: 5),
                          child: Text(
                            "₹2000",
                            style: FontConstants.inter(
                              color: Colorconstants.PrimaryColor,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
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
