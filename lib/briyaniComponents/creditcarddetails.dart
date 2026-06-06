import 'package:flutter/material.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:sizer/sizer.dart';

class CardScreen extends StatefulWidget {
  CardScreen({Key? key}) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 14.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colorconstants.PrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Card Details",
                        style: FontConstants.inter(
                          fontSize: 17.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    "Add your card details",
                    style: FontConstants.inter(
                      fontSize: 16.sp,
                      color: const Color.fromARGB(255, 225, 224, 224),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Card Number", style: TextStyle(fontSize: 16.sp)),
          ),
          SizedBox(height: 0.5.h),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              width: 400,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Card Number",
                  filled: true,
                  fillColor: const Color(0xFFF0F0F0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 0.5.h),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Name On Card", style: TextStyle(fontSize: 16.sp)),
          ),
          SizedBox(height: 0.5.h),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              width: 400,
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  filled: true,
                  fillColor: const Color(0xFFF0F0F0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 0.5.h),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text("Card Nick Name", style: TextStyle(fontSize: 16.sp)),
          ),
          SizedBox(height: 0.5.h),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              width: 400,
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Enter Card Nick Name ",
                  filled: true,
                  fillColor: const Color(0xFFF0F0F0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 1.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("CVV", style: TextStyle(fontSize: 16.sp)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 110),
                child: Text("Expiry Date", style: TextStyle(fontSize: 16.sp)),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SizedBox(
                  width: 180,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter CVV ",
                      filled: true,
                      fillColor: const Color(0xFFF0F0F0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: SizedBox(
                  width: 180,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "dd/yyyy",
                      filled: true,
                      fillColor: const Color(0xFFF0F0F0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(87.w, 4.8.h),
                backgroundColor: Colorconstants.PrimaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text("Make Payment"),
            ),
          ),
        ],
      ),
    );
  }
}
