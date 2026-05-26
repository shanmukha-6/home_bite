import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Constants/ImageConstants.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filterList = [
    "Filter",
    "New to you",
    "Offers",
    "Ratings 4.0+",
    "Pure Veg",
    "Fast Delivery",
  ];
  final List<Map<String, String>> categories = [
    {"name": "Biryani", "image": "assets/briyani.png"},
    {"name": "Ice Creams", "image": "assets/icecream.png"},
    {"name": "Burgers", "image": "assets/burger.png"},
    {"name": "Dosa", "image": "assets/dosa.png"},
    {"name": "Idli", "image": "assets/idly.png"},
    {"name": "Salad", "image": "assets/salad.png"},
    {"name": "Pasta", "image": "assets/pasta.png"},
    {"name": "Momos", "image": "assets/momos.png"},
    {"name": "Desserts", "image": "assets/desserts.png"},
    {"name": "Cakes", "image": "assets/cake.png"},
    {"name": "Pizzas", "image": "assets/pizza.png"},
    {"name": "Noodels", "image": "assets/noodels.png"},
    {"name": "Juice", "image": "assets/juice.png"},
  ];

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
              child: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 8, bottom: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              "Manikonda,Hyderbad",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: 12.sp,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 135),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.account_circle_outlined,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        children: [
                          SizedBox(width: 1.3.h),
                          Homeheadercontainer(
                            HEADERTEXT: 'HomeFood',
                            HEADERIMAGE: Imageconstants.HOMETOP1,
                            HEADERONTAP: () {},
                          ),
                          SizedBox(width: 1.h),
                          Homeheadercontainer(
                            HEADERTEXT: 'Lunch \n Box',
                            HEADERIMAGE: Imageconstants.HOMETOP2,
                            HEADERONTAP: () {},
                          ),
                          SizedBox(width: 1.h),
                          Homeheadercontainer(
                            HEADERTEXT: 'Bulk \n Orders',
                            HEADERIMAGE: Imageconstants.HOMETOP3,
                            HEADERONTAP: () {},
                          ),
                          SizedBox(width: 1.h),
                          Homeheadercontainer(
                            HEADERTEXT: 'Special \n Orders',
                            HEADERIMAGE: Imageconstants.HOMETOP4,
                            HEADERONTAP: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 40.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 74, 119, 76),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.h),
                        Container(
                          height: 5.5.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200, // background color
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "Search for Food Or Kitchens",
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                                color: Colors.black,
                              ),
                              suffixIcon: Icon(
                                Icons.mic_sharp,
                                color: Colors.blue,
                                size: 30,
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                          ),
                        ),

                        SizedBox(height: 2.h),
                        Text(
                          "Great Burgers \n in Bulk",
                          style: GoogleFonts.kavoon(
                            fontSize: 22.sp,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),

                          child: Text(
                            "Burgers At Home",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 227, 227, 227),
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Examistic taste",
                            style: GoogleFonts.kaushanScript(
                              fontSize: 22.sp,
                              color: const Color.fromARGB(255, 220, 220, 220),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  bottom: 40,
                  left: 220,
                  child: Image.asset(Imageconstants.HOMEPAGE, scale: 4),
                ),
                Positioned(
                  left: 350,
                  top: 120,

                  child: Container(
                    height: 3.h,
                    width: 19.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 20, 71, 21),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "20% off ",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 218, 215, 215),
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 0.7.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
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
            SizedBox(
              height: 18.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 1.w),
                    child: Stack(
                      children: [
                        Container(
                          height: 18.h,
                          width: 70.w,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 159, 160, 159),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.network(
                            "https://images.unsplash.com/photo-1596040033229-a9821ebd058d",
                          ),
                        ),
                        Positioned(
                          top: 100,
                          left: 10,

                          child: Text(
                            "Vijay Daily Menu",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 130,
                          left: 10,
                          child: Row(
                            children: [
                              Container(
                                height: 2.h,
                                width: 4.h,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 46, 95, 48),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Meal",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(width: 1.2.w),
                              Container(
                                height: 2.h,
                                width: 5.7.h,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Curries",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        22,
                                        21,
                                        21,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 1.2.w),
                              Container(
                                height: 2.h,
                                width: 5.4.h,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Snacks",
                                    style: TextStyle(
                                      color: const Color.fromARGB(
                                        255,
                                        27,
                                        25,
                                        25,
                                      ),
                                    ),
                                  ),
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 3.5.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filterList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (index == 0)
                            const Icon(Icons.filter_alt_outlined, size: 18),

                          if (index == 0) const SizedBox(width: 4),

                          Text(
                            filterList[index],
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          const SizedBox(width: 4),

                          const Icon(Icons.keyboard_arrow_down, size: 18),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 1.4.h),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 19),
                  child: Text(
                    "Explore",
                    style: FontConstants.inter(fontSize: 19.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.3.h),
            SizedBox(
              height: 10.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemBuilder: (context, index) {
                  return Container(
                    width: 22.w,
                    margin: const EdgeInsets.only(right: 12),
                    child: Column(
                      children: [
                        Container(
                          height: 7.h,
                          width: 12.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 249, 249, 249),
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              categories[index]["image"]!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        SizedBox(height: 0.8.h),

                        Text(
                          categories[index]["name"]!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 2.h),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Home Chefs Near You",
                    style: FontConstants.inter(fontSize: 19.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.5.h),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 20.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    chefCard(
                      image:
                          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500",
                      name: "Chef Laxmi",
                      rating: "4.8",
                    ),
                    SizedBox(width: 15),
                    chefCard(
                      image:
                          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500",
                      name: "Chechi",
                      rating: "4.8",
                    ),
                    SizedBox(width: 15),
                    chefCard(
                      image:
                          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500",
                      name: "Sravya",
                      rating: "4.8",
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 1.8,
                children: [
                  serviceCard(
                    title: "Order Only\nCurries",
                    image:
                        "https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg",
                  ),
                  serviceCard(
                    title: "Order Full\nMeals",
                    image:
                        "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg",
                  ),
                  serviceCard(
                    title: "Meal\nSubscription",
                    image:
                        "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg",
                  ),
                  serviceCard(
                    title: "Bulk Order\nFor\nFunctions",
                    image:
                        "https://images.pexels.com/photos/3763847/pexels-photo-3763847.jpeg",
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Are You Here ?",
                    style: FontConstants.inter(fontSize: 19.sp),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190),
                  child: Text(
                    "See All",
                    style: FontConstants.inter(fontSize: 18.sp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.5.h),
            Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                        ),
                        child: Image.network(
                          "https://images.pexels.com/photos/12737656/pexels-photo-12737656.jpeg",
                          height: 260,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Container(
                              height: 260,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 260,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.broken_image_outlined,
                                size: 44,
                                color: Colors.grey.shade500,
                              ),
                            );
                          },
                        ),
                      ),

                      // Offer Tag
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          decoration: const BoxDecoration(
                            color: Color(0xFF005A1E),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Flat 10% Off",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      // Favorite Icon
                      Positioned(
                        top: 16,
                        right: 16,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.favorite_border, size: 28),
                        ),
                      ),

                      // Rating
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: const BoxDecoration(
                            color: Color(0xFF005A1E),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "4.8",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 3),
                              Icon(Icons.star, color: Colors.amber, size: 18),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Deluxe Veg Meals",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),

                            Text(
                              "₹200 For One",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Complete meal with roti, rice, dal,salad.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                            ),

                            Text(
                              "30 Min .1.1Km",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
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
            SizedBox(height: 1.5.h),
            Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                        ),
                        child: Image.network(
                          "https://images.pexels.com/photos/9609844/pexels-photo-9609844.jpeg",
                          height: 260,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Container(
                              height: 260,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 260,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.broken_image_outlined,
                                size: 44,
                                color: Colors.grey.shade500,
                              ),
                            );
                          },
                        ),
                      ),

                      // Offer Tag
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          decoration: const BoxDecoration(
                            color: Color(0xFF005A1E),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Flat 10% Off",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      // Favorite Icon
                      Positioned(
                        top: 16,
                        right: 16,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.favorite_border, size: 28),
                        ),
                      ),

                      // Rating
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: const BoxDecoration(
                            color: Color(0xFF005A1E),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "4.8",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 3),
                              Icon(Icons.star, color: Colors.amber, size: 18),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Sitha’s Non Veg Meal",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),

                            Text(
                              "₹200 For One",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Flavorful dum-feast for group orders.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                            ),

                            Text(
                              "30 Min .1.1Km",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
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
            SizedBox(height: 1.5.h),
            Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                        ),
                        child: Image.network(
                          "https://images.pexels.com/photos/1487511/pexels-photo-1487511.jpeg",
                          height: 260,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Container(
                              height: 260,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 260,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.broken_image_outlined,
                                size: 44,
                                color: Colors.grey.shade500,
                              ),
                            );
                          },
                        ),
                      ),

                      // Offer Tag
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          decoration: const BoxDecoration(
                            color: Color(0xFF005A1E),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Flat 10% Off",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      // Favorite Icon
                      Positioned(
                        top: 16,
                        right: 16,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.favorite_border, size: 28),
                        ),
                      ),

                      // Rating
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: const BoxDecoration(
                            color: Color(0xFF005A1E),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "4.8",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 3),
                              Icon(Icons.star, color: Colors.amber, size: 18),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Non-Veg Combo",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),

                            Text(
                              "₹200 For One",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Complete meal with non-veg curry, rice.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                            ),

                            Text(
                              "30 Min .1.1Km",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
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
            SizedBox(height: 1.5.h),
            Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                        ),
                        child: Image.network(
                          "https://images.pexels.com/photos/7625056/pexels-photo-7625056.jpeg",
                          height: 260,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Container(
                              height: 260,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                              alignment: Alignment.center,
                              child: const CircularProgressIndicator(),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 260,
                              width: double.infinity,
                              color: Colors.grey.shade200,
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.broken_image_outlined,
                                size: 44,
                                color: Colors.grey.shade500,
                              ),
                            );
                          },
                        ),
                      ),

                      // Offer Tag
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          decoration: const BoxDecoration(
                            color: Color(0xFF005A1E),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              bottomRight: Radius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Flat 10% Off",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      // Favorite Icon
                      Positioned(
                        top: 16,
                        right: 16,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Icons.favorite_border, size: 28),
                        ),
                      ),

                      // Rating
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: const BoxDecoration(
                            color: Color(0xFF005A1E),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "4.8",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 3),
                              Icon(Icons.star, color: Colors.amber, size: 18),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Biryani bliss Kitchen",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),

                            Text(
                              "₹200 For One",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Hyderabadi Biryani Party Pack",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                            ),

                            Text(
                              "30 Min .1.1Km",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
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
          ],
        ),
      ),
    );
  }
}

class Homeheadercontainer extends StatelessWidget {
  final String HEADERTEXT;
  final String HEADERIMAGE;
  final VoidCallback HEADERONTAP;
  const Homeheadercontainer({
    super.key,
    required this.HEADERTEXT,
    required this.HEADERIMAGE,
    required this.HEADERONTAP,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 9.h,
      height: 11.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 11, 70, 25),
            Color.fromARGB(255, 62, 115, 74),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),

        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(34),
        ),

        border: Border.all(
          color: const Color.fromARGB(241, 187, 187, 187),
          width: 1.5,
        ),

        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(2, 3)),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: [
            Text(
              HEADERTEXT,
              style: TextStyle(color: Colors.white, fontSize: 14.5.sp),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Image.asset(HEADERIMAGE, scale: 3.8),
            ),
          ],
        ),
      ),
    );
  }
}

Widget chefCard({
  required String image,
  required String name,
  required String rating,
}) {
  return Container(
    width: 50.w,
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(radius: 30, backgroundImage: NetworkImage(image)),
            SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: FontConstants.inter(fontSize: 18.sp)),

                  SizedBox(height: 5),

                  Row(
                    children: [
                      Text("Ratings", style: TextStyle(fontSize: 16)),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.amber, size: 22),
                      SizedBox(width: 4),
                      Text(
                        rating,
                        style: TextStyle(
                          fontSize: 16,
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

        SizedBox(height: 15),

        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Hygiene Status: ",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              TextSpan(
                text: "Verified",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 18),

        SizedBox(
          width: double.infinity,
          height: 5.h,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF064B18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
            child: Text(
              "View Profile",
              style: FontConstants.inter(fontSize: 17.sp, color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget serviceCard({required String title, required String image}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          image,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              color: Colors.grey.shade200,
              alignment: Alignment.center,
              child: const CircularProgressIndicator(strokeWidth: 2),
            );
          },
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey.shade200,
              alignment: Alignment.center,
              child: Icon(
                Icons.broken_image_outlined,
                size: 40,
                color: Colors.grey.shade500,
              ),
            );
          },
        ),

        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.black.withOpacity(0.6), Colors.transparent],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(14),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
