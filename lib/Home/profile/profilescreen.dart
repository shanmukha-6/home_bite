import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Home/profile/favorite.dart';
import 'package:home_bite/Home/profile/orderscreen.dart';
import 'package:home_bite/Home/profile/setting.dart';
import 'package:sizer/sizer.dart';

class Profilescreen extends StatefulWidget {
  Profilescreen({Key? key}) : super(key: key);

  @override
  _ProfilescreenState createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 22.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Colorconstants.PrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 9.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Profile",
                        style: FontConstants.inter(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Your Available Profile",
                            style: FontConstants.inter(
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 170),
                          child: Icon(
                            Icons.border_color_outlined,
                            color: Colors.white,
                            size: 23,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Edit",
                            style: FontConstants.inter(
                              fontSize: 17.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.5.h),
              Text(
                "Alena",
                style: FontConstants.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "+91 85688 67894",
                style: FontConstants.inter(fontSize: 16.sp),
              ),
              Text(
                "Alena@gmail.com",
                style: FontConstants.inter(fontSize: 16.sp),
              ),
              SizedBox(height: 5.h),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Veg Mode",
                      style: FontConstants.inter(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset("assets/heart.png", scale: 3.5),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Favourites",
                      style: FontConstants.inter(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 254),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (conetxt) => FavoriteScreen(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset("assets/order.png", scale: 3.5),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Orders",
                      style: FontConstants.inter(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 285),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => OrderScreen(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset("assets/payment.png", scale: 3.5),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Payments",
                      style: FontConstants.inter(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset("assets/subscribe.png", scale: 3.5),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9),
                    child: Text(
                      "Subscribe",
                      style: FontConstants.inter(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Image.asset("assets/setting.png", scale: 3.5),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: Text(
                      "Setting",
                      style: FontConstants.inter(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 285),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SettingScreen(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset("assets/logout.png", scale: 3.5),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Logout",
                      style: FontConstants.inter(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 280),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 140,
            left: 140,
            child: Image.asset("assets/profile2.png", scale: 3),
          ),
          SizedBox(height: 5.h),
        ],
      ),
    );
  }
}
