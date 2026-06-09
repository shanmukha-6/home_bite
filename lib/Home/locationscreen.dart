import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:sizer/sizer.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({Key? key}) : super(key: key);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
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
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "Select Location",
                              style: FontConstants.inter(
                                color: Colors.white,
                                fontSize: 17.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 47),
                        child: Text(
                          "Your Location With Maps",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.5.h),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Select Your Location",
                    style: FontConstants.inter(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 5.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 12,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 2),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Search Area",
                          hintStyle: TextStyle(fontSize: 20),
                          prefixIcon: Icon(Icons.search, size: 29),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),

                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Use Current Location",
                    style: FontConstants.inter(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 0.5.h),
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Text(
                    "Manikonda,Hyderabad",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color.fromARGB(255, 95, 95, 95),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Text(
                        "Add Address",
                        style: FontConstants.inter(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 13),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 21,
                        color: const Color.fromARGB(255, 121, 121, 121),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),

                    Text(
                      "Saved Address",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Home",
                    style: FontConstants.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Flat 204, Green Heights, Madhapur, \nHyderabad, Telangana 500081",
                    style: FontConstants.inter(fontSize: 15.sp),
                  ),
                ),
                SizedBox(height: 2.h),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Home",
                    style: FontConstants.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Flat No. 203, Sai Residency \nAyyappa Society Main Road \nMadhapur, Hyderabad, Telangana \n500081 India",
                    style: FontConstants.inter(fontSize: 15.sp),
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),

                    Text(
                      "Recent Address",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Home",
                    style: FontConstants.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Flat 204, Green Heights, Madhapur, \nHyderabad, Telangana 500081",
                    style: FontConstants.inter(fontSize: 15.sp),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 255,
              left: 400,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 21,
                color: const Color.fromARGB(255, 121, 121, 121),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
