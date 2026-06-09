import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Home/Bulkorder/createqoutescreen.dart';
import 'package:home_bite/button.dart';
import 'package:sizer/sizer.dart';

class Specialcustomscreen extends StatefulWidget {
  Specialcustomscreen({Key? key}) : super(key: key);

  @override
  _SpecialcustomscreenState createState() => _SpecialcustomscreenState();
}

class _SpecialcustomscreenState extends State<Specialcustomscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 29,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Special Order",
                          style: FontConstants.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55),
                    child: Text(
                      "Home Bites",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 227, 227, 227),
                        fontSize: 15.5.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.5.h),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 8.h,
                width: 95.w,
                decoration: BoxDecoration(
                  color: Colorconstants.PrimaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 0.5.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Create Your Damn Dish",
                        style: FontConstants.inter(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 0.5.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Tell Us Exactly What You Want,Our Chef Will Review Your\n Request And Provide a Custom Quote",
                        style: FontConstants.inter(
                          fontSize: 14.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Describe Your Custom Request",
                style: FontConstants.inter(
                  fontSize: 15.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 92.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0EAEA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Your Delivery address",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 134, 133, 133),
                      ),
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
                "Quantity/Servings",
                style: FontConstants.inter(
                  fontSize: 15.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 92.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0EAEA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "1",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 134, 133, 133),
                      ),
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
                  fontSize: 15.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 92.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0EAEA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "mm/dd/yyyy",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 134, 133, 133),
                      ),
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
                "Delivery Time",
                style: FontConstants.inter(
                  fontSize: 15.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 92.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0EAEA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "--:-- --",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 134, 133, 133),
                      ),
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
                  fontSize: 15.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 92.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0EAEA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Your Occasion",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 134, 133, 133),
                      ),
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
                "Delivery Time",
                style: FontConstants.inter(
                  fontSize: 15.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 92.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0EAEA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Your Occasion",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 134, 133, 133),
                      ),
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
                "Dietary Preferences/Allergies",
                style: FontConstants.inter(
                  fontSize: 15.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 5.h,
                width: 92.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFF0EAEA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Your Occasion",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 134, 133, 133),
                      ),
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
                "Reference Image(Optional)",
                style: FontConstants.inter(
                  fontSize: 15.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Upload A Photo Of What You Exactly Like Us To Create",
                style: FontConstants.inter(
                  fontSize: 15.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Container(
              height: 160,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.file_upload_outlined,
                    size: 45,
                    color: Colors.grey,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Click to upload or drag and drop",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    "MP4, MOV, OR JPG(MAX,50MB)",
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "How It Works",
                style: FontConstants.inter(
                  fontSize: 15.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 3.h,
                    width: 3.h,
                    decoration: BoxDecoration(
                      color: Colorconstants.PrimaryColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 4),
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Submit Your Custom Request With All Details",
                    style: TextStyle(color: Color(0xFF000000), fontSize: 15.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 3.h,
                    width: 3.h,
                    decoration: BoxDecoration(
                      color: Colorconstants.PrimaryColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 4),
                      child: Text(
                        "2",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Chef Review And Accept/Reject Your Request",
                    style: TextStyle(color: Color(0xFF000000), fontSize: 15.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 3.h,
                    width: 3.h,
                    decoration: BoxDecoration(
                      color: Colorconstants.PrimaryColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 4),
                      child: Text(
                        "3",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Receive A Custom Price Quote And Preparation Time",
                    style: TextStyle(color: Color(0xFF000000), fontSize: 15.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 3.h,
                    width: 3.h,
                    decoration: BoxDecoration(
                      color: Colorconstants.PrimaryColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 4),
                      child: Text(
                        "4",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Accept The Quote And We All Start Preparation",
                    style: TextStyle(color: Color(0xFF000000), fontSize: 15.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: const EdgeInsets.only(left: 46),
              child: Button(
                ButtonText: "Send Quote",
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
