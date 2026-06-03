import 'package:flutter/material.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Home/homepage.dart';
import 'package:sizer/sizer.dart';

class CustomizationScreen extends StatefulWidget {
  const CustomizationScreen({super.key});

  @override
  State<CustomizationScreen> createState() => _CustomizationScreenState();
}

class _CustomizationScreenState extends State<CustomizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colorconstants.PrimaryColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6.h),

              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 21),
                        child: Text(
                          "Restaurants",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Your Best Foods",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(
                              backgroundColor: const Color.fromARGB(
                                255,
                                186,
                                186,
                                186,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => HomePage(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios,
                                    color: Color.fromARGB(255, 247, 247, 247),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Icon(Icons.share, color: Colors.white),
                          const SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              backgroundColor: const Color.fromARGB(
                                255,
                                177,
                                176,
                                176,
                              ),
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              SizedBox(height: 4.h),

              Expanded(
                child: Container(
                  width: 100.w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 7.h),
                        Text(
                          "Burger Bliss Kitchen",
                          style: FontConstants.inter(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(
                          "A triple Layer Burger With Veg Filling",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color.fromARGB(255, 74, 73, 73),
                          ),
                        ),

                        SizedBox(height: 2.h),

                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 18,
                            ),
                            const SizedBox(width: 5),
                            const Text(
                              "4.5",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(width: 15),
                            Text(
                              "345 Reviews",
                              style: TextStyle(fontSize: 15.sp),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Text(
                                "Delivery In 35 Minutes",
                                style: TextStyle(fontSize: 15.sp),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 2.5.h),

                        Container(
                          height: 3.5.h,
                          width: 65.w,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 173, 209, 174),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "Get 40% Off On Weekend Special",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),

                        SizedBox(height: 3.h),

                        SizedBox(
                          height: 35,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              categoryItem("Filters", isFilter: true),
                              categoryItem("New to You"),
                              categoryItem("Offers"),
                              categoryItem("Rating 4.0"),
                              categoryItem("Overview"),
                            ],
                          ),
                        ),

                        SizedBox(height: 2.h),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Are You Here?",
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

                        const SizedBox(height: 15),

                        foodCard(
                          image:
                              "https://images.unsplash.com/photo-1589302168068-964664d93dc0",
                          tag: "Non Veg",
                          tagColor: Colors.red,
                          kitchen: "Biryani bliss Kitchen",
                          title: "Chicken Biryani Pack",
                          price: "₹200",
                          description:
                              "Aromatic basmati rice layered with tender marinated chicken, slow-cooked with authentic spices.",
                        ),

                        const SizedBox(height: 15),

                        foodCard(
                          image:
                              "https://images.unsplash.com/photo-1547592180-85f173990554",
                          tag: "Veg",
                          tagColor: Colors.green,
                          kitchen: "Veg Kitchen",
                          title: "Paneer Tikka Platter",
                          price: "₹200",
                          description:
                              "Soft paneer cubes marinated in spiced yogurt and grilled to perfection.",
                        ),

                        SizedBox(height: 2.h),

                        Row(
                          children: [
                            Expanded(
                              child: smallFoodCard(
                                title: "Sitha’s Non Veg Meal",
                                price: "₹1000",
                                description:
                                    "Flavorful dum for group 10 Plates orders.",
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: smallFoodCard(
                                title: "Non-Veg Combo",
                                price: "₹1000",
                                description:
                                    "Complete meal with 4 Plates non-veg curry, rice.",
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 5.h),

                        cartBottomBar(),

                        SizedBox(height: 5.h),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 130,
          left: 110,
          child: Image.asset("assets/custom.png", scale: 4),
        ),
      ],
    );
  }
}

Widget categoryItem(String title, {bool isFilter = false}) {
  return Container(
    margin: const EdgeInsets.only(right: 12),
    padding: const EdgeInsets.symmetric(horizontal: 12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade400),
    ),
    child: Row(
      children: [
        if (isFilter) const Icon(Icons.filter_alt_outlined, size: 18),
        if (isFilter) const SizedBox(width: 5),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        if (isFilter) const SizedBox(width: 5),
        if (isFilter) const Icon(Icons.keyboard_arrow_down_rounded, size: 18),
      ],
    ),
  );
}

Widget foodCard({
  required String image,
  required String tag,
  required Color tagColor,
  required String kitchen,
  required String title,
  required String price,
  required String description,
}) {
  return Container(
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
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: Image.network(
                image,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: tagColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  tag,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(kitchen, style: const TextStyle(fontSize: 13)),
              const SizedBox(height: 4),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  price,
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 11, color: Colors.black54),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 16),
                  SizedBox(width: 4),
                  Text("4.5", style: TextStyle(fontSize: 12)),
                  SizedBox(width: 12),
                  Icon(Icons.access_time, size: 15, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    "Ready In 4 Hours",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget smallFoodCard({
  required String title,
  required String price,
  required String description,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          child: Image.network(
            "https://images.unsplash.com/photo-1589302168068-964664d93dc0",
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontSize: 13)),
              const SizedBox(height: 8),
              Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 11, color: Colors.black54),
              ),
              const SizedBox(height: 8),
              Text(
                price,
                style: TextStyle(color: Colors.orange, fontSize: 15.sp),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget cartBottomBar() {
  return Container(
    height: 55,
    decoration: BoxDecoration(
      color: const Color(0xFFD4F2D3),
      borderRadius: BorderRadius.circular(12),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child: const Row(
      children: [
        Text(
          "1 Item",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 8),
        SizedBox(height: 25, child: VerticalDivider(color: Colors.black54)),
        SizedBox(width: 8),
        Text("₹250", style: TextStyle(fontSize: 16)),
        Spacer(),
        Text(
          "1 Item Added",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(width: 8),
        Icon(Icons.arrow_forward_ios, size: 18),
      ],
    ),
  );
}
