import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:sizer/sizer.dart';

class BiteScreen extends StatefulWidget {
  BiteScreen({Key? key}) : super(key: key);

  @override
  _BiteScreenState createState() => _BiteScreenState();
}

class _BiteScreenState extends State<BiteScreen> {
  List<Map<String, String>> menuItems = [
    {
      "title": "Chicken Biryani",
      "desc":
          "Flavorful and aromatic rice dish made with basmati rice, spices, and meat or vegetables, cooked using the dum method for rich taste and perfect layering.",
      "price": "₹250",
      "image": "https://images.unsplash.com/photo-1589302168068-964664d93dc0",
    },
    {
      "title": "Vegetable Rice",
      "desc":
          "Fragrant rice cooked with mixed vegetables and light spices. Slightly rich and flavorful, perfect as a standalone dish.",
      "price": "₹250",
      "image": "https://images.unsplash.com/photo-1596797038530-2c107229654b",
    },
    {
      "title": "Spicy Indo-Chinese Box",
      "desc":
          "Perfect combination of stir-fried rice or noodles, a rich and spicy gravy dish, and a crunchy side like spring rolls or momos.",
      "price": "₹250",
      "image": "https://images.unsplash.com/photo-1569718212165-3a8278d5f624",
    },
    {
      "title": "Deluxe Veg Salad",
      "desc":
          "Fresh, crunchy vegetables served as a light and healthy side to balance your meal.",
      "price": "₹250",
      "image": "https://images.unsplash.com/photo-1512621776951-a57141f2eefd",
    },
  ];
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
                  height: 22.h,
                  width: 100.w,
                  decoration: BoxDecoration(color: Colorconstants.PrimaryColor),
                  child: Column(
                    children: [
                      SizedBox(height: 7.h),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 4.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                color: Colorconstants.PrimaryColor,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 26,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 110),
                            child: Text(
                              "Bite Box",
                              style: FontConstants.inter(
                                fontSize: 19.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 90),
                            child: Icon(
                              Icons.share,
                              size: 27,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 4.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                color: Colorconstants.PrimaryColor,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                  size: 26,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Chef Laxmi",
                    style: FontConstants.inter(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 0.4.h),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text(
                    "A triple Layer Burger With Veg Filling",
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Icon(Icons.star, color: Colors.yellow, size: 23),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text("4.5", style: TextStyle(fontSize: 16.sp)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "345 Reviews",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        "Delivery In 35 Minutes",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Children",
                        style: FontConstants.inter(fontSize: 17.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "Teens",
                        style: FontConstants.inter(fontSize: 17.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "Adult",
                        style: FontConstants.inter(fontSize: 17.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "Seniors",
                        style: FontConstants.inter(fontSize: 17.sp),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        "Fitness",
                        style: FontConstants.inter(fontSize: 17.sp),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4),
                  child: Divider(
                    color: Colors.red,
                    height: 20,
                    indent: 10,
                    endIndent: 345,
                  ),
                ),
                SizedBox(height: 0.5.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Container(
                        height: 4.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: Colorconstants.PrimaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 38, top: 9),
                          child: Text(
                            "Weekly Menu",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 4.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colorconstants.PrimaryColor,
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 38, top: 7),
                          child: Text(
                            "Monthly Menu",
                            style: TextStyle(
                              color: Color(0xFF7C7575),
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      dayItem("Monday", true),
                      dayItem("Tuesday", false),
                      dayItem("Wednesday", false),
                      dayItem("Thursday", false),
                      dayItem("Friday", false),
                      dayItem("Saturday", false),
                      dayItem("Sunday", false),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) {
                    final item = menuItems[index];

                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["title"]!,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 8),

                                Text(
                                  item["desc"]!,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(fontSize: 13),
                                ),

                                const SizedBox(height: 10),

                                Row(
                                  children: [
                                    Text(
                                      item["price"]!,
                                      style: const TextStyle(
                                        color: Colors.blue,
                                        fontSize: 13,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    ...List.generate(
                                      5,
                                      (index) => const Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 10),

                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.network(
                                  item["image"]!,
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              Positioned(
                                bottom: -13,
                                left: 25,
                                right: 25,
                                child: Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Text(
                                    "+Add",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
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
                SizedBox(height: 6.h),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colorconstants.PrimaryColor,
                      minimumSize: Size(390, 50),
                      maximumSize: Size(390, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Send Quote",
                      style: TextStyle(color: Colors.white, fontSize: 16.sp),
                    ),
                  ),
                ),
                SizedBox(height: 6.h),
              ],
            ),
            Positioned(
              top: 115,
              left: 115,
              child: Image.asset("assets/sweet.png", scale: 3.5),
            ),
          ],
        ),
      ),
    );
  }
}

Widget dayItem(String day, bool isSelected) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          day,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        if (isSelected)
          Container(
            height: 3,
            width: 65,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
      ],
    ),
  );
}
