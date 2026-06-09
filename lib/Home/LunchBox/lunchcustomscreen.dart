import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/button.dart';
import 'package:sizer/sizer.dart';

class Lunchcustomscreen extends StatefulWidget {
  Lunchcustomscreen({Key? key}) : super(key: key);

  @override
  _LunchcustomscreenState createState() => _LunchcustomscreenState();
}

class _LunchcustomscreenState extends State<Lunchcustomscreen> {
  final Set<String> _selectedPreferences = {};

  Widget customCheckBox(String title) {
    return SizedBox(
      height: 25,
      child: Row(
        children: [
          const Text("•", style: TextStyle(fontSize: 13)),
          Checkbox(
            value: _selectedPreferences.contains(title),
            onChanged: (value) {
              setState(() {
                if (value == true) {
                  _selectedPreferences.add(title);
                } else {
                  _selectedPreferences.remove(title);
                }
              });
            },
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: const VisualDensity(horizontal: -3, vertical: -3),
            side: const BorderSide(width: 1),
          ),
          Text(title, style: const TextStyle(fontSize: 17)),
        ],
      ),
    );
  }

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
                        padding: const EdgeInsets.only(left: 15),
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
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Customize Your Lunch Box",
                          style: FontConstants.inter(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 54),
                    child: Text(
                      "Small Plan",
                      style: TextStyle(fontSize: 14.sp, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Name",
                style: FontConstants.inter(
                  fontSize: 16.sp,
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
                      hintText: "Enter Your Name",
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
                "Contact Number",
                style: FontConstants.inter(
                  fontSize: 16.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 0.5.h),
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
                      hintText: "Enter Your Contact Number",
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
                  fontSize: 16.sp,
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
                "Kitchen Name",
                style: FontConstants.inter(
                  fontSize: 16.sp,
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
                      hintText: "Enter Your Preferred Kitchen Name",
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
              padding: const EdgeInsets.only(left: 10),
              child: Stack(
                children: [
                  Container(
                    height: 10.h,
                    width: 95.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      child: Image.asset(
                        "assets/briyanilisting.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 10,
                    child: Text(
                      "One Time Order",
                      style: FontConstants.inter(
                        color: Colors.white,
                        fontSize: 17.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 0.6.h),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Stack(
                    children: [
                      Container(
                        height: 10.h,
                        width: 47.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(10),
                          child: Image.asset(
                            "assets/fullbriyani.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 10,
                        child: Text(
                          "Weekly Plan",
                          style: FontConstants.inter(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 10.h,
                        width: 47.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(10),
                          child: Image.asset(
                            "assets/salad1.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 10,
                        child: Text(
                          "Monthly Plan",
                          style: FontConstants.inter(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Food Type",
                style: FontConstants.inter(
                  fontSize: 16.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            SizedBox(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  foodTypeChip("Veg", "assets/greendot.png"),
                  foodTypeChip("Non Veg", "assets/danger.png"),
                  foodTypeChip("Vegan", "assets/dynamic.png"),
                  foodTypeChip("Eggitarian", "assets/egg.png"),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Food Preferences ",
                style: FontConstants.inter(
                  fontSize: 16.sp,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Cuisine Choice (Select multiple if needed)",
                    style: TextStyle(fontSize: 18),
                  ),
                  customCheckBox("South Indian"),
                  customCheckBox("North Indian"),
                  customCheckBox("Chinese"),
                  customCheckBox("Continental"),
                  customCheckBox("Home-style"),

                  const Text(
                    "Staples (Choose 1 or 2):",
                    style: TextStyle(fontSize: 18),
                  ),
                  customCheckBox("Rice"),
                  customCheckBox("Roti/Chapati"),
                  customCheckBox("Jeera Rice"),
                  customCheckBox("Pulao"),

                  const Text(
                    "Main Dish (Choose 1 or 2):",
                    style: TextStyle(fontSize: 18),
                  ),
                  customCheckBox("Dal"),
                  customCheckBox("Paneer Dish"),
                  customCheckBox("Chicken Curry"),
                  customCheckBox("Vegetable Curry"),
                  customCheckBox("Egg Curry"),

                  const Text("Sides:", style: TextStyle(fontSize: 18)),
                  customCheckBox("Salad"),
                  customCheckBox("Curd"),
                  customCheckBox("Pickle"),
                  customCheckBox("Papad"),
                ],
              ),
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
                "Dietary Preferences/Allergies",
                style: FontConstants.inter(
                  fontSize: 16.sp,
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
                      hintText: "E.g.,Nut-Free,Glutan-Free,Low-Sugar...",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 134, 133, 133),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colorconstants.PrimaryColor,
                  minimumSize: Size(390, 50),
                  maximumSize: Size(390, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Send Quote",
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
              ),
            ),
            SizedBox(height: 7.h),
          ],
        ),
      ),
    );
  }
}

Widget foodTypeChip(String title, String image) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(image, height: 30, width: 30),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF444444),
          ),
        ),
      ],
    ),
  );
}
