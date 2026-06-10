import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/briyaniComponents/biryanilisting.dart';
import 'package:sizer/sizer.dart';

class BiryaniScreen extends StatefulWidget {
  const BiryaniScreen({Key? key}) : super(key: key);

  @override
  State<BiryaniScreen> createState() => _BiryaniScreenState();
}

class _BiryaniScreenState extends State<BiryaniScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 10.h,
            width: 100.w,
            decoration: BoxDecoration(color: Colorconstants.PrimaryColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 3.h),
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
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7),
                      child: Text(
                        "Kitchens",
                        style: FontConstants.inter(
                          fontSize: 18.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    "Your Recipes Listingsss",
                    style: FontConstants.inter(
                      color: Colors.white,
                      fontSize: 16.sp,
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
                categoryItem("Filter"),
                categoryItem("New to you"),
                categoryItem("Offers"),
                categoryItem("Fast Delivery"),
                categoryItem("Rating 4.0+"),
                categoryItem("Pure Veg"),
                categoryItem("Low Price"),
                categoryItem("Cuisines"),
              ],
            ),
          ),

          const SizedBox(height: 20),

          sectionTitle("Top Kitchens"),

          SizedBox(height: 2.h),

          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => BiryaniListingScreen()),
              );
            },
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 1,
                childAspectRatio: 1.12,
              ),
              itemBuilder: (context, index) {
                return foodCard(
                  image:
                      "https://images.unsplash.com/photo-1504674900247-0877df9cc836",
                  offer: index == 0 ? "Flat 50%\nOff" : "Items At\n₹200",
                  title: index == 0
                      ? "Biryani bliss Kitchen"
                      : "Deluxe Non Veg Meal",
                  description: "Hyderabadi Biryani Party Pack",
                );
              },
            ),
          ),

          const SizedBox(height: 7),

          sectionTitle("Kitchen Special Offers"),

          const SizedBox(height: 10),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return kitchenOfferCard(index, () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BiryaniListingScreen(),
                  ),
                );
              });
            },
          ),
        ],
      ),
    );
  }
}

Widget sectionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: FontConstants.inter(
            fontSize: 17.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "See All",
          style: FontConstants.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
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
          const Icon(Icons.filter_alt_outlined, size: 18),
          const SizedBox(width: 5),
        ],
        Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        if (title == "Filter") ...[
          const SizedBox(width: 5),
          const Icon(Icons.keyboard_arrow_down, size: 18),
        ],
      ],
    ),
  );
}

Widget foodCard({
  required String image,
  required String offer,
  required String title,
  required String description,
}) {
  return Padding(
    padding: const EdgeInsets.all(6),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  image,
                  height: 11.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 10,
                top: 15,
                child: Text(
                  offer,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                right: 1,
                bottom: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 2,
                  ),
                  color: const Color.fromARGB(255, 26, 75, 28),
                  child: const Row(
                    children: [
                      Text(
                        "4.6",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      Icon(Icons.star, color: Colors.yellow, size: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 11),
                ),
              ),
              const Text("30-35 Min", style: TextStyle(fontSize: 10)),
            ],
          ),
          const SizedBox(height: 4),
          const Text(
            "Miyapur 5.9 Km",
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
        ],
      ),
    ),
  );
}

Widget kitchenOfferCard(int index, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.only(bottom: 15),
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
          Stack(
            children: [
              Container(
                height: 21.h,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      index == 0
                          ? "https://images.unsplash.com/photo-1606491956689-2ea866880c84"
                          : index == 1
                          ? "https://images.unsplash.com/photo-1546069901-ba9599a7e63c"
                          : index == 2
                          ? "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4"
                          : "https://images.unsplash.com/photo-1504674900247-0877df9cc836",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
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
                    index == 2 ? "Flat 20% Off" : "Flat 10% Off",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite_border,
                    size: 18,
                    color: Colors.black87,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 3,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 13, 82, 15),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              children: [
                Row(
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
                    const Text("₹200 For One", style: TextStyle(fontSize: 12)),
                  ],
                ),
                const SizedBox(height: 7),
                Row(
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
                      style: TextStyle(fontSize: 11, color: Colors.black54),
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
}
