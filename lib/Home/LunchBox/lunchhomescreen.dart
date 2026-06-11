import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Home/Bulkorder/bulkordermenu.dart';
import 'package:home_bite/Home/Bulkorder/customizebulk.dart';
import 'package:home_bite/Home/LunchBox/bitescreen.dart';
import 'package:home_bite/Home/LunchBox/lunchcustomscreen.dart';
import 'package:home_bite/Home/LunchBox/subscribecustomscreen.dart';
import 'package:home_bite/Home/notification.dart';
import 'package:home_bite/Home/profile/profilescreen.dart';
import 'package:home_bite/briyaniComponents/biryanidetails.dart';
import 'package:home_bite/briyaniComponents/customizescreen.dart';
import 'package:home_bite/briyaniComponents/trackorderscreeen.dart';
import 'package:home_bite/button.dart';
import 'package:sizer/sizer.dart';

class Lunchhomescreen extends StatefulWidget {
  Lunchhomescreen({Key? key}) : super(key: key);

  @override
  _LunchhomescreenState createState() => _LunchhomescreenState();
}

class _LunchhomescreenState extends State<Lunchhomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 100.w,
              decoration: BoxDecoration(color: Color(0xFF064B18)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 5.5.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 17),
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 19.sp,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Manikonda,Hyderabad",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          size: 19.sp,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 95),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => NotificationScreen(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.notifications_none_outlined,
                            size: 19.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 9),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Profilescreen(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.account_circle_outlined,
                            size: 19.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 10.h,
                            width: 19.w,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 41, 90, 54),
                              border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 197),
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(1),
                              ),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Image.asset(
                                    "assets/hometop1.png",
                                    scale: 5,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    " Home ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: Text(
                                    "  Food",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 10.h,
                            width: 19.w,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 41, 90, 54),
                              border: Border.all(
                                color: const Color.fromARGB(255, 197, 197, 197),
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(1),
                              ),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    "assets/hometop2.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Text(
                                    " Lunch ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 1),
                                  child: Text(
                                    " Box",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 10.h,
                            width: 19.w,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 41, 90, 54),
                              border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 197),
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                                bottomLeft: Radius.circular(7),
                                topRight: Radius.circular(1),
                              ),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsetsGeometry.only(top: 4),
                                ),
                                Image.asset(
                                  "assets/hometop3.png",
                                  fit: BoxFit.contain,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Text(
                                    " Bulk ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 1),
                                  child: Text(
                                    "  Orders",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            height: 10.h,
                            width: 19.w,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 41, 90, 54),
                              border: Border.all(
                                color: Color.fromARGB(255, 197, 197, 197),
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(1),
                              ),
                            ),
                            clipBehavior: Clip.hardEdge,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    "assets/hometop4.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 2,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "Special",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 2,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "orders",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 38.h,
                  width: 100.w,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 84, 125, 85),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 1.h),
                      SizedBox(
                        width: 90.w,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search for food kitchens',
                            hintStyle: TextStyle(fontSize: 16.sp),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 12, 12, 12),
                              size: 30,
                            ),
                            suffixIcon: IconButton(
                              icon: const Icon(
                                Icons.mic,
                                color: Colors.blue,
                                size: 28,
                              ),
                              onPressed: () {
                                print('Mic tapped');
                              },
                            ),
                            filled: true,
                            fillColor: Colors.grey[100],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 55,
                  child: Container(
                    height: 4.h,
                    width: 9.w,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 220,
                  left: 290,
                  child: Container(
                    height: 12.h,
                    width: 27.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/lunch 2.png", scale: 1),
                  ),
                ),
                Positioned(
                  top: 330,
                  left: 325,
                  child: Container(
                    height: 4.h,
                    width: 9.w,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 20,
                  child: Container(
                    height: 12.h,
                    width: 27.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/lunch1.png", scale: 1),
                  ),
                ),

                Positioned(
                  top: 95,
                  left: 220,

                  child: Text(
                    "Lunch Boxes \n     At Your \n     Homes",
                    style: FontConstants.kumar(
                      color: Colors.white,
                      fontSize: 22.sp,
                    ),
                  ),
                ),

                Positioned(
                  top: 315,
                  left: 22,
                  child: Text(
                    "Todays Lunch Box",
                    style: FontConstants.KaushanScript(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
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
                  child: Text(
                    "In The Spotlight",
                    style: FontConstants.inter(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 15.h,
                width: 100.w,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 66.w,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1504674900247-0877df9cc836',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 30),
                        child: Text(
                          "Lunch Boxes In \n Your Hands",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 1.h),
            SizedBox(
              height: 33,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10),
                children: [
                  categoryItem("High-protein"),
                  categoryItem("Gut-friendly "),
                  categoryItem("Fresh fruits"),
                  categoryItem("Nuts and seeds"),
                  categoryItem("Energy-dense"),
                  categoryItem("Hydration"),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Explore",
                    style: FontConstants.inter(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  foodTile("assets/briyani.png", "Biryani", () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BiryaniScreen()),
                    );
                  }),
                  foodTile("assets/icecream.png", "Ice Creams", () {}),
                  foodTile("assets/burger.png", "Burgers", () {}),
                  foodTile("assets/dosa.png", "Dosa", () {}),
                  foodTile("assets/idly.png", "Idli", () {}),
                  foodTile("assets/salad.png", "salad", () {}),
                  foodTile("assets/pasta.png", "pasta", () {}),
                  foodTile("assets/Momos.png", "Momos", () {}),
                  foodTile("assets/desserts.png", "Desserts", () {}),
                  foodTile("assets/cake.png", "Cake", () {}),
                  foodTile("assets/pizza.png", "Pizza", () {}),
                  foodTile("assets/noodels.png", "Noodels", () {}),
                  foodTile("assets/juice.png", "Juice", () {}),
                ],
              ),
            ),
            SizedBox(height: 1.5.h),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Choose Lunch Box From Your Chefs",
                    style: FontConstants.inter(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.5.h),
            SizedBox(
              height: 215,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    width: 66.w,
                    margin: const EdgeInsets.only(
                      left: 12,
                      right: 5,
                      bottom: 8,
                    ),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage("assets/homechef.png"),
                        ),

                        const SizedBox(height: 10),

                        const Text(
                          "Chef Laxmi",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 4),

                        const Row(
                          children: [
                            Text("Ratings", style: TextStyle(fontSize: 14)),
                            SizedBox(width: 6),
                            Icon(Icons.star, color: Colors.orange, size: 17),
                            SizedBox(width: 3),
                            Text("4.8"),
                          ],
                        ),

                        const SizedBox(height: 4),

                        const Text(
                          "Serving Weekly Lunches",
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(height: 0.5.h),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Hygiene Status: ",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: "Verified",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const Spacer(),

                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 28,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                        color: Color(0xFF064B18),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => BiteScreen(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "View Menu",
                                    style: TextStyle(
                                      color: Color(0xFF064B18),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 8),

                            Expanded(
                              child: SizedBox(
                                height: 28,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF064B18),
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Lunchcustomscreen(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Customize",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 1.5.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Choose Your Lunch Box Plan",
                    style: FontConstants.inter(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    "See All",
                    style: FontConstants.inter(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Container(
              height: 16.h,
              width: 94.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 17.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      child: Image.asset(
                        "assets/salad1.png",
                        fit: BoxFit.cover,
                        scale: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 0.5.h),
                        Text(
                          "Small Plan",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          "10-15 People",
                          style: FontConstants.inter(fontSize: 15.sp),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          "Ideal for snacks or light eaters",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          "₹99 / Day",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF064B18),
                          ),
                        ),
                        SizedBox(height: 0.8.h),
                        Container(
                          height: 2.5.h,
                          width: 27.w,
                          decoration: BoxDecoration(
                            color: Colorconstants.PrimaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 22, top: 1.9),
                            child: Text(
                              "Customize",
                              style: FontConstants.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Container(
              height: 16.h,
              width: 94.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 17.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      child: Image.asset(
                        "assets/snacks.png",
                        fit: BoxFit.cover,
                        scale: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 0.5.h),
                        Text(
                          "Medium Plan ",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          "20-25 People",
                          style: FontConstants.inter(fontSize: 15.sp),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          "Ideal for regular lunch",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          "₹299 / Day",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF064B18),
                          ),
                        ),
                        SizedBox(height: 0.8.h),
                        Container(
                          height: 2.5.h,
                          width: 27.w,
                          decoration: BoxDecoration(
                            color: Colorconstants.PrimaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 22, top: 2),
                            child: Text(
                              "Customize",
                              style: FontConstants.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Container(
              height: 16.h,
              width: 94.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 17.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      child: Image.asset(
                        "assets/french.png",
                        fit: BoxFit.cover,
                        scale: 2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 0.5.h),
                        Text(
                          "Large Plan",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          "35-45 People",
                          style: FontConstants.inter(fontSize: 15.sp),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          "Ideal for office or sharing",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        SizedBox(height: 0.5.h),
                        Text(
                          "₹499 / Day",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF064B18),
                          ),
                        ),
                        SizedBox(height: 0.8.h),
                        Container(
                          height: 2.5.h,
                          width: 27.w,
                          decoration: BoxDecoration(
                            color: Colorconstants.PrimaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 24, top: 2),
                            child: Text(
                              "Customize",
                              style: FontConstants.inter(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5.h),
            Container(
              height: 9.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Color(0xFFEEFFF2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    height: 10.h,
                    width: 16.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Image.asset("assets/spices.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Customize plan",
                          style: FontConstants.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Customize your lunch plan",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Subscribecustomscreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 3.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          color: Colorconstants.PrimaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 6),
                          child: Text(
                            "Customize Plan",
                            style: FontConstants.inter(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
          ],
        ),
      ),
    );
  }

  Widget categoryItem(String title) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black26),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title == "Filter") ...[
            const Icon(
              Icons.filter_alt_outlined,
              size: 18,
              color: Colors.black87,
            ),
            const SizedBox(width: 5),
          ],

          Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),

          if (title == "Filter") ...[
            const SizedBox(width: 5),
            const Icon(
              Icons.keyboard_arrow_down,
              size: 18,
              color: Colors.black87,
            ),
          ],
        ],
      ),
    );
  }

  Widget foodTile(String image, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 80,
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,

                radius: 25,
                backgroundImage: AssetImage(image),
              ),
              const SizedBox(height: 5),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
