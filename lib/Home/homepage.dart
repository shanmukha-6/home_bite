import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Home/Bulkorder/bulkhomescreen.dart';
import 'package:home_bite/Home/Bulkorder/bulkordermenu.dart';
import 'package:home_bite/Home/SpecialOrder/specialhomescreen.dart';
import 'package:home_bite/Home/locationscreen.dart';
import 'package:home_bite/Home/notification.dart';
import 'package:home_bite/briyaniComponents/biryanidetails.dart';
import 'package:home_bite/briyaniComponents/biryanilisting.dart';
import 'package:home_bite/briyaniComponents/cardsummary.dart';
import 'package:home_bite/briyaniComponents/customizescreen.dart';
import 'package:home_bite/briyaniComponents/trackorderscreeen.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => LocationScreen(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 19.sp,
                            color: Colors.white,
                          ),
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
                        child: Icon(
                          Icons.account_circle_outlined,
                          size: 19.sp,
                          color: Colors.white,
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            },
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Specialhomescreen(),
                                ),
                              );
                            },
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
                  height: 40.h,
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
                  top: 90,
                  left: 10,
                  child: Image.asset("assets/main.png", scale: 4),
                ),
                Positioned(
                  top: 325,
                  left: 110,
                  child: Container(
                    height: 3.h,
                    width: 21.w,
                    decoration: BoxDecoration(
                      color: Colorconstants.PrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, left: 6),
                      child: Text(
                        "Just At ₹200",
                        style: TextStyle(color: Colors.yellow, fontSize: 14),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 45,

                  child: Text(
                    "Burger,Pizza And More",
                    style: FontConstants.kavoon(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                Positioned(
                  top: 355,
                  left: 112,
                  child: Text(
                    "Order Yor Favourite Meal",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
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
                        padding: const EdgeInsets.only(left: 5, top: 90),
                        child: Text(
                          "Big Hunger? \n We’ve Got You",
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
                  categoryItem("Filter"),
                  categoryItem("New to you  "),
                  categoryItem("Offers"),
                  categoryItem("Fast Delivery"),
                  categoryItem("Rating 4.0+"),
                  categoryItem("Pure Veg"),
                  categoryItem("Low Price"),
                  categoryItem("Cuisines"),
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
            Stack(
              children: [
                Container(
                  height: 14.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Color(0xFFF0FFF4),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Color.fromARGB(255, 85, 106, 91),
                      width: 2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Your Order Is On The Way",
                          style: FontConstants.inter(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Chicken Biryani",
                          style: FontConstants.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 0.3.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "From Biryani Kitchen",
                          style: FontConstants.inter(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 0.8.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Arriving In 12 Min",
                          style: FontConstants.inter(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 109,
                  left: 20,

                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Trackorderscreeen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 2.h,
                      width: 14.w,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 12, 57, 14),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14, top: 1),
                        child: Text(
                          "Track Order",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 320,
                  child: Image.asset("assets/deliveryhome.png", scale: 4),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Home Chefs Near You",
                    style: FontConstants.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.5.h),
            SizedBox(
              height: 145,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    width: 45.w,
                    margin: const EdgeInsets.only(left: 12, right: 5),
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
                        /// TOP ROW
                        Row(
                          children: [
                            /// IMAGE
                            CircleAvatar(
                              radius: 22,
                              backgroundImage: AssetImage(
                                "assets/homechef.png",
                              ),
                            ),

                            const SizedBox(width: 10),

                            /// NAME + RATING
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: const Text(
                                      "Chef Laxmi",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 2),

                                  Row(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text(
                                          "Ratings",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: 5),

                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 18,
                                      ),

                                      SizedBox(width: 2),

                                      Text(
                                        "4.8",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        /// HYGIENE
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "Hygiene Status: ",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                  ),
                                ),

                                TextSpan(
                                  text: "Verified",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        const Spacer(),

                        /// BUTTON
                        SizedBox(
                          width: double.infinity,
                          height: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF064B18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => BiryaniListingScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "View Profile",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 1.5.h),
            SizedBox(
              height: 30.h,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.6,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => BiryaniScreen(),
                        ),
                      );
                    },
                    child: Container(
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
                        padding: const EdgeInsets.only(left: 5, top: 63),
                        child: Text(
                          "Order Only \n Curries",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Are You Here?",
                    style: FontConstants.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    "See All",
                    style: FontConstants.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 125.h,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                padding: const EdgeInsets.all(10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 15,
                  childAspectRatio: 1.45,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CustomizationScreen(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
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
                          /// IMAGE SECTION
                          Stack(
                            children: [
                              /// IMAGE
                              Container(
                                height: 21.h,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      index == 0
                                          ? "https://images.unsplash.com/photo-1606491956689-2ea866880c84"
                                          : index == 1
                                          ? "https://images.unsplash.com/photo-1606491956689-2ea866880c84"
                                          : index == 2
                                          ? "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4"
                                          : "https://images.unsplash.com/photo-1504674900247-0877df9cc836",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              /// OFFER TAG
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 7,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF064B18),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Text(
                                    index == 2
                                        ? "Flat 20% Off"
                                        : "Flat 10% Off",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),

                              /// FAVORITE ICON
                              Positioned(
                                top: 10,
                                right: 10,
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.white,
                                  child: const Icon(
                                    Icons.favorite_border,
                                    size: 18,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),

                              /// RATING
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 6,
                                    vertical: 3,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    index == 1 ? "4.6 ★" : "4.8 ★",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          /// DETAILS
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// TITLE + PRICE
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        index == 0
                                            ? "Biryani bliss Kitchen"
                                            : index == 1
                                            ? "Deluxe Veg Meal"
                                            : index == 2
                                            ? "Punjabi Dhaba"
                                            : "Royal Food Court",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),

                                    const Text(
                                      "₹200 For One",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 7),

                                /// SUBTITLE + TIME
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        index == 0
                                            ? "Hyderabadi Biryani Party Pack"
                                            : index == 1
                                            ? "Complete meal with roti, rice"
                                            : index == 2
                                            ? "North Indian Special Meals"
                                            : "Best food combos available",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),

                                    const Text(
                                      "30 Min .1.1Km",
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.black54,
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
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
