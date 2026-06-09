import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Home/Bulkorder/createqoutescreen.dart';
import 'package:home_bite/button.dart';
import 'package:sizer/sizer.dart';

class BulkOrderTwo extends StatefulWidget {
  BulkOrderTwo({Key? key}) : super(key: key);

  @override
  _BulkOrderTwoState createState() => _BulkOrderTwoState();
}

class _BulkOrderTwoState extends State<BulkOrderTwo> {
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
    {
      "name": "Brown Bread",
      "price": "₹2000",
      "image": "https://images.unsplash.com/photo-1509440159596-0249088772ff",
      "desc": "Brown bread is a type of bread made from whole wheat flour.",
    },
    {
      "name": "Aloo Fry",
      "price": "₹2000",
      "image": "https://images.unsplash.com/photo-1512058564366-18510be2db19",
      "desc": "Crispy and spicy potato cubes sautéed with mustard seeds.",
    },
    {
      "name": "Chicken Curry",
      "price": "₹2000",
      "image": "https://images.unsplash.com/photo-1603894584373-5ac82b2ae398",
      "desc": "Chicken curry cooked with onions, tomatoes and spices.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      " Bulk Order Menu",
                      style: FontConstants.inter(
                        fontSize: 17.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Text(
                    " Select Your Bulk Order Menu",
                    style: FontConstants.inter(
                      fontSize: 15.sp,
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
          SizedBox(height: 0.4.h),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Customize Your Bulk Order",
              style: FontConstants.inter(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 1.h),

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: foodItems.length,
              itemBuilder: (context, index) {
                final item = foodItems[index];

                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 7,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          item["image"],
                          height: 75,
                          width: 75,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item["name"],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),

                            const SizedBox(height: 3),

                            Text(
                              item["desc"],
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 11,
                              ),
                            ),

                            const SizedBox(height: 5),

                            Text(
                              item["price"],
                              style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 8),

                      Container(
                        height: 27,
                        width: 72,
                        decoration: BoxDecoration(
                          color: const Color(0xffE8F5E9),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.green),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Text("-"), Text("1"), Text("+")],
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
            padding: const EdgeInsets.only(left: 40),
            child: Button(
              ButtonText: "Next",
              ButtonColor: Colorconstants.PrimaryColor,
              ButtononTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => QouteScreen()));
              },
            ),
          ),
          SizedBox(height: 3.h),
        ],
      ),
    );
  }
}
