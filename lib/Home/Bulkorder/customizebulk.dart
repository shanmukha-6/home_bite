import 'package:flutter/material.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Home/Bulkorder/createqoutescreen.dart';
import 'package:home_bite/button.dart';
import 'package:sizer/sizer.dart';

class CustomizeBulkScreen extends StatefulWidget {
  CustomizeBulkScreen({Key? key}) : super(key: key);

  @override
  _CustomizeBulkScreenState createState() => _CustomizeBulkScreenState();
}

class _CustomizeBulkScreenState extends State<CustomizeBulkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                        padding: const EdgeInsets.only(left: 17),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        " Customize Your bulk Order",
                        style: FontConstants.inter(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Text(
                      " Select Your Customization",
                      style: FontConstants.inter(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Select Dishes",
                style: FontConstants.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF606060),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Dishes Names",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Number Of People",
                style: FontConstants.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF606060),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Number Of People",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Delivery Date",
                style: FontConstants.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF606060),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    hintText: "mm/dd/yyyy",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Delivery Time",
                style: FontConstants.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF606060),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "--:-- --",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Number Of Plates",
                style: FontConstants.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF606060),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefix: Icon(Icons.arrow_drop_up, size: 20),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Occasion",
                style: FontConstants.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF606060),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Your Occasion",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.5.h),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Text(
                "Food Type",
                style: FontConstants.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF606060),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                SizedBox(height: 1.h),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 4.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 230, 230, 230),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset('assets/greendot.png', scale: 3),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text("Veg", style: TextStyle(fontSize: 16.sp)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 4.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 230, 230, 230),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset('assets/danger.png', scale: 3),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Text(
                            "Non Veg",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Spice Level",
                style: FontConstants.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF606060),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                SizedBox(height: 1.h),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 4.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 230, 230, 230),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "Less",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 4.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 230, 230, 230),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            "Medium",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 4.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 230, 230, 230),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 33),
                          child: Text(
                            "Spicy",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Packaging",
                style: FontConstants.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF606060),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 4.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 230, 230, 230),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Bulk Containers",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 4.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 230, 230, 230),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Individual Plates",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Delivery Address",
                style: FontConstants.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF606060),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Your Delivery address",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Special Requirements",
                style: FontConstants.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF606060),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Your Requirements",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.only(left: 47),
              child: Button(
                ButtonText: "Send Qoute",
                ButtonColor: Colorconstants.PrimaryColor,
                ButtononTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => QouteScreen()),
                  );
                },
              ),
            ),
            SizedBox(height: 5.h),
          ],
        ),
      ),
    );
  }
}
