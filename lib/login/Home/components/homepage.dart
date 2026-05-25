import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_bite/Constants/ColorConstants.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Constants/ImageConstants.dart';
import 'package:home_bite/Responsive.dart';
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
    {"name": "Burgers", "image": "assets/burgers.png"},
    {"name": "Dosa", "image": "assets/dosa.png"},
    {"name": "Idli", "image": "assets/idly.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 22.h,
              width: 100.w,
              decoration: BoxDecoration(color: Color(0xFF064B18)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 50),
                child: Column(
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
            Stack(
              children: [
                Container(
                  height: 40.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 93, 123, 94),
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
                      color: const Color.fromARGB(255, 30, 61, 31),
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
                height: 3.4.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filterList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
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
            SizedBox(height: 1.h),
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
                          height: 6.h,
                          width: 6.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
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
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
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
          color: const Color.fromARGB(242, 207, 207, 207),
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
