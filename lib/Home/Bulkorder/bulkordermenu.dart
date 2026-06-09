import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Home/Bulkorder/bulkordertwo.dart';
import 'package:home_bite/button.dart';
import 'package:sizer/sizer.dart';

class BulkMenuScreen extends StatefulWidget {
  const BulkMenuScreen({Key? key}) : super(key: key);

  @override
  State<BulkMenuScreen> createState() => _BulkMenuScreenState();
}

class _BulkMenuScreenState extends State<BulkMenuScreen> {
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
          "Starts with a creamy vanilla or caramel-flavored ice cream base, made from milk, cream, and sugar.",
    },
    {
      "name": "Brown Bread",
      "price": "₹2000",
      "image": "https://images.unsplash.com/photo-1509440159596-0249088772ff",
      "desc":
          "Brown Bread is a type of bread made from whole wheat flour or partially refined flour.",
    },
    {
      "name": "Aloo Fry",
      "price": "₹2000",
      "image": "https://images.unsplash.com/photo-1512058564366-18510be2db19",
      "desc":
          "Crispy, spicy potato cubes sautéed with mustard seeds, curry leaves, and chili—great as a side dish.",
    },
    {
      "name": "Chicken Curry",
      "price": "₹2000",
      "image": "https://images.unsplash.com/photo-1603894584373-5ac82b2ae398",
      "desc": "Usually starts with onions, tomatoes, ginger and garlic.",
    },
    {
      "name": "Gulab Jamun",
      "price": "₹2000",
      "image": "https://images.unsplash.com/photo-1601050690597-df0568f70950",
      "desc": "Made from milk solids and soaked in sugar syrup.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Container(
            height: 13.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colorconstants.PrimaryColor,
              borderRadius: const BorderRadius.only(
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
                    const SizedBox(width: 15),

                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 27,
                      ),
                    ),

                    const SizedBox(width: 15),

                    Text(
                      "Bulk Order Menu",
                      style: FontConstants.inter(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 57, top: 3),
                  child: Text(
                    "Select Your Bulk Order Menu",
                    style: FontConstants.inter(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 2.h),

          SizedBox(
            height: 33,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 10),
              children: [
                categoryItem("Birthdays"),
                categoryItem("Office"),
                categoryItem("Festival"),
                categoryItem("Family Functions"),
              ],
            ),
          ),

          SizedBox(height: 3.h),

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
          Button(
            ButtonText: "Next",
            ButtonColor: Colorconstants.PrimaryColor,
            ButtononTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => BulkOrderTwo()));
            },
          ),
          SizedBox(height: 2.h),
        ],
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
    child: Center(
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
      ),
    ),
  );
}
