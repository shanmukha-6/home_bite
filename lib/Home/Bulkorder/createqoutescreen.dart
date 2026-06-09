import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Home/Bulkorder/acceptqoutescreen.dart';
import 'package:home_bite/button.dart';
import 'package:sizer/sizer.dart';

class QouteScreen extends StatefulWidget {
  QouteScreen({Key? key}) : super(key: key);

  @override
  _QouteScreenState createState() => _QouteScreenState();
}

class _QouteScreenState extends State<QouteScreen> {
  List<Map<String, dynamic>> foodItems = [
    {
      "name": "Kichidi",
      "price": "₹2000",
      "image": "https://images.unsplash.com/photo-1547592180-85f173990554",
      "desc":
          "A comforting blend of rice and lentils, cooked soft with mild spices.",
    },
    {
      "name": "Salted Caramel Ice Cream",
      "price": "₹2000",
      "image": "https://images.unsplash.com/photo-1563805042-7684c019e1cb",
      "desc":
          "Starts with a creamy vanilla or caramel-flavored ice cream base.",
    },
  ];
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
                        padding: const EdgeInsets.only(left: 20),
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
                      Text(
                        " Create Quote",
                        style: FontConstants.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      " Customers Quote",
                      style: FontConstants.inter(
                        fontSize: 14.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            SizedBox(
              height: 270,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodItems.length,
                itemBuilder: (context, index) {
                  final item = foodItems[index];

                  return Container(
                    width: 220,
                    margin: const EdgeInsets.only(left: 12, right: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18),
                            bottomLeft: Radius.circular(18),
                            bottomRight: Radius.circular(18),
                          ),
                          child: Image.network(
                            item["image"],
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["name"],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 5),

                              Text(
                                item["desc"],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 13,
                                ),
                              ),

                              const SizedBox(height: 8),

                              Text(
                                item["price"],
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Create Quote",
                style: FontConstants.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                "Price Per Plate",
                style: TextStyle(
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
                      hintText: "Enter Price Per Plate",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                "Total Price",
                style: TextStyle(
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
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "Total Price",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Text(
                "Delivery Time",
                style: TextStyle(
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
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "Enter Delivery Time",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Button(
                ButtonText: "Send Quote",
                ButtonColor: Colorconstants.PrimaryColor,
                ButtononTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Acceptqoutescreen(),
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
