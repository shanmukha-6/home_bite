import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:sizer/sizer.dart';

class CardSummaryScreen extends StatefulWidget {
  CardSummaryScreen({Key? key}) : super(key: key);

  @override
  _CardSummaryScreenState createState() => _CardSummaryScreenState();
}

class _CardSummaryScreenState extends State<CardSummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 16.h,
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
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
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
        ],
      ),
    );
  }
}
