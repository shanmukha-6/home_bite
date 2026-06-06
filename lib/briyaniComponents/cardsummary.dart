import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/briyaniComponents/paymentoption.dart';
import 'package:sizer/sizer.dart';

class CardSummaryScreen extends StatefulWidget {
  CardSummaryScreen({Key? key}) : super(key: key);

  @override
  _CardSummaryScreenState createState() => _CardSummaryScreenState();
}

class _CardSummaryScreenState extends State<CardSummaryScreen> {
  @override
  final List<Map<String, String>> foodItems = [
    {"image": "assets/briyani1.png", "title": "Veg Salad", "price": "₹350"},
    {
      "image": "assets/briyani1.png",
      "title": "Chicken Biryani",
      "price": "₹250",
    },
    {"image": "assets/briyani1.png", "title": "Burger", "price": "₹180"},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 13.h,
            width: 100.w,
            decoration: BoxDecoration(color: Colorconstants.PrimaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "Card Summary",
                      style: FontConstants.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "Your Order Is Here",
                    style: FontConstants.inter(
                      color: const Color.fromARGB(255, 229, 229, 229),
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Stack(
            children: [
              Container(
                height: 43.h,
                width: 95.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.3,
                      blurStyle: BlurStyle.normal,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 7),
                      child: Text(
                        "Card Summary",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 31, 30, 30),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Image.asset("assets/zinger.png", scale: 4),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 10),
                              child: Text(
                                "chicken briyani",
                                style: FontConstants.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: Text(
                                "₹250 ",
                                style: TextStyle(fontSize: 15.sp),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 27, top: 9),
                          child: Image.asset("assets/danger.png", scale: 3),
                        ),
                      ],
                    ),

                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "Items Total",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Text(
                            "₹250",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 15, // left space
                      endIndent: 15, // right space
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Delivery Fee",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text("₹40", style: TextStyle(fontSize: 16.sp)),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Taxes & Charges",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text("₹20", style: TextStyle(fontSize: 16.sp)),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Discount",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text("₹0", style: TextStyle(fontSize: 16.sp)),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Packing Charges",
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text("₹0", style: TextStyle(fontSize: 16.sp)),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 15,
                      endIndent: 15,
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            "Grand Total",
                            style: FontConstants.inter(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            "₹350",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 130,
                left: 47,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(20, 30),
                    maximumSize: Size(90, 60),
                    side: BorderSide(color: Colors.brown, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(9),
                    ),
                    backgroundColor: Color(0xFFE0FFE8),
                  ),
                  onPressed: () {},
                  child: Text("- 1 +"),
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Complete Your meal",
                  style: FontConstants.inter(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),

          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: SizedBox(
              height: 10.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  final item = foodItems[index];

                  return Container(
                    height: 18.h,
                    width: 60.w,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      border: Border(
                        bottom: BorderSide(color: Colors.green, width: 1),
                        top: BorderSide(color: Colors.green, width: 1),
                        left: BorderSide(color: Colors.green, width: 1),
                        right: BorderSide(color: Colors.green, width: 1),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 92,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              item["image"]!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item["title"]!,
                              style: FontConstants.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              item["price"]!,
                              style: TextStyle(
                                color: const Color(0xFF064B18),
                                fontSize: 16.sp,
                              ),
                            ),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(20, 30),
                                maximumSize: Size(90, 60),
                                side: BorderSide(color: Colors.brown, width: 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    9,
                                  ),
                                ),
                                backgroundColor: Color(0xFFE0FFE8),
                              ),
                              onPressed: () {},
                              child: const Text("+ Add"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20.h),

          GestureDetector(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => PaymentScreen()));
            },
            child: Container(
              height: 5.h,
              width: 85.w,
              decoration: BoxDecoration(
                color: Color(0xFFD3FFDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 60, top: 13),
                child: Text(
                  "Select addres & Pay At next Step",
                  style: TextStyle(color: Color(0xFF064B18), fontSize: 16.sp),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
