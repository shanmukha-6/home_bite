import 'package:flutter/material.dart';
import 'package:home_bite/Constants/FontConstants.dart';
import 'package:home_bite/Home/Components/cardsummary.dart';
import 'package:sizer/sizer.dart';

class BiryaniListingScreen extends StatefulWidget {
  const BiryaniListingScreen({Key? key}) : super(key: key);

  @override
  State<BiryaniListingScreen> createState() => _BiryaniListingScreenState();
}

class _BiryaniListingScreenState extends State<BiryaniListingScreen> {
  final List<Map<String, dynamic>> foodList = const [
    {
      "image":
          "https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=500",
      "title": "Biryani",
      "desc":
          "Fragrant basmati rice layered with spices and cooked to perfection.",
      "isVeg": false,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1668236543090-82eba5ee5976?w=500",
      "title": "Dosa",
      "desc": "A crispy and golden South Indian dosa cooked to perfect.",
      "isVeg": true,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=500",
      "title": "Sprout Salad",
      "desc": "A nutritious sprout salad with crunchy vegetables.",
      "isVeg": true,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1598515214211-89d3c73ae83b?w=500",
      "title": "Grilled Chicken",
      "desc": "Juicy chicken pieces marinated and grilled.",
      "isVeg": false,
    },
  ];

  final List<Map<String, dynamic>> biryaniList = const [
    {
      "title": "Chicken Biryani",
      "desc":
          "Flavorful and aromatic rice dish made with basmati rice, spices, and meat or vegetables, cooked using the dum method for rich taste and perfect layering.",
      "price": "₹350",
      "image":
          "https://images.unsplash.com/photo-1589302168068-964664d93dc0?w=500",
    },
    {
      "title": "Andhra Biryani",
      "desc":
          "Flavorful and aromatic rice dish made with basmati rice, spices, and meat or vegetables, cooked using the dum method for rich taste and perfect layering.",
      "price": "₹250",
      "image":
          "https://images.unsplash.com/photo-1633945274405-b6c8069047b0?w=500",
    },
    {
      "title": "Dum Biryani",
      "desc":
          "Flavorful and aromatic rice dish made with basmati rice, spices, and meat or vegetables, cooked using the dum method for rich taste and perfect layering.",
      "price": "₹250",
      "image":
          "https://images.unsplash.com/photo-1606491956689-2ea866880c84?w=500",
    },
    {
      "title": "Special Biryani",
      "desc":
          "Flavorful and aromatic rice dish made with basmati rice, spices, and meat or vegetables, cooked using the dum method for rich taste and perfect layering.",
      "price": "₹250",
      "image":
          "https://images.unsplash.com/photo-1589302168068-964664d93dc0?w=500",
    },
  ];

  void showFoodDetails({
    required String title,
    required String desc,
    required String price,
    required String image,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          height: 230,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        foodTypeIcon(false),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(desc, style: const TextStyle(fontSize: 14)),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 6,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          price,
                          style: const TextStyle(
                            color: Color(0xFF006B2E),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text("4.8"),
                        const Icon(Icons.star, color: Colors.orange, size: 15),
                        const Icon(Icons.star, color: Colors.orange, size: 15),
                        const Icon(Icons.star, color: Colors.orange, size: 15),
                        const Icon(Icons.star, color: Colors.orange, size: 15),
                        const Icon(Icons.star, color: Colors.orange, size: 15),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Transform.translate(
                    offset: const Offset(30, -20), // right, up
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        image,
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -1,
                    left: 75,
                    right: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);

                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return Container(
                              height: 480,
                              padding: const EdgeInsets.all(20),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFFB8F2D3),
                                      child: IconButton(
                                        onPressed: () => Navigator.pop(context),
                                        icon: const Icon(Icons.close),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 20),

                                  Row(
                                    children: [
                                      const Text(
                                        "Add On's",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/danger.png",
                                        scale: 3,
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 10),

                                  Text(
                                    title,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  Text(
                                    price,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 24, 25, 24),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(height: 20),

                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Extra Cheese",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Icon(
                                        Icons.radio_button_unchecked,
                                        color: Color(0xFF006B2E),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 15),

                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Extra Patty",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Icon(
                                        Icons.radio_button_unchecked,
                                        color: Color(0xFF006B2E),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 15),

                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Extra Veggies",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Icon(
                                        Icons.radio_button_unchecked,
                                        color: Color(0xFF006B2E),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 20),

                                  TextField(
                                    maxLines: 2,
                                    decoration: InputDecoration(
                                      hintText:
                                          "Add Cooking Instructions Or Special Requirements(E.g No Onion,Separate Pack)",
                                      hintStyle: TextStyle(
                                        color: const Color.fromARGB(
                                          255,
                                          191,
                                          190,
                                          190,
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 70,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        child: const Text("- 1 +"),
                                      ),

                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF006B2E),
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    CardSummaryScreen(),
                                              ),
                                            );
                                          },
                                          child: const Text(
                                            "Add Item ₹400",
                                            style: TextStyle(
                                              color: Colors.white,
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
                        );
                      },
                      child: Container(
                        height: 32,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE9F3EF),
                          border: Border.all(color: const Color(0xFF006B2E)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "+Add",
                          style: TextStyle(
                            color: Color(0xFF005A18),
                            fontWeight: FontWeight.bold,
                          ),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 23.h,
                width: 100.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/briyanilisting.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: 100.w,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 9.h),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Bio",
                            style: FontConstants.inter(
                              fontSize: 19.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "As a home chef, I believe the best meals come from the heart. I specialize in preparing fresh, hygienic, and tasty home-style food that reminds you of family and comfort.",
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Hygiene",
                            style: FontConstants.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                            ),
                          ),
                        ),

                        SizedBox(height: 1.h),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Hygiene(FSSAI)",
                            style: FontConstants.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            height: 40,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                customChip(
                                  title: "Veg",
                                  image: "assets/greendot.png",
                                ),
                                customChip(
                                  title: "Non Veg",
                                  image: "assets/danger.png",
                                ),
                                customChip(
                                  title: "Top Rated",
                                  image: "assets/star.png",
                                ),
                                customChip(
                                  title: "Kids Friendly",
                                  image: "assets/baby.png",
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 1.h),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Chef’s Special",
                            style: FontConstants.inter(
                              fontSize: 19.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: foodList.length,
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 40),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 18,
                                mainAxisSpacing: 38,
                                childAspectRatio: 0.79,
                              ),
                          itemBuilder: (context, index) {
                            final item = foodList[index];
                            return foodItemCard(
                              image: item["image"],
                              title: item["title"],
                              desc: item["desc"],
                              isVeg: item["isVeg"],
                            );
                          },
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Arthi’s Menu",
                            style: FontConstants.inter(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: biryaniList.length,
                          separatorBuilder: (context, index) {
                            return const Divider(
                              color: Colors.grey,
                              thickness: 1,
                              indent: 15,
                              endIndent: 15,
                            );
                          },
                          itemBuilder: (context, index) {
                            final item = biryaniList[index];

                            return GestureDetector(
                              onTap: () {
                                showFoodDetails(
                                  title: item["title"],
                                  desc: item["desc"],
                                  price: item["price"],
                                  image: item["image"],
                                );
                              },
                              child: biryaniItemCard(
                                title: item["title"],
                                desc: item["desc"],
                                price: item["price"],
                                image: item["image"],
                              ),
                            );
                          },
                        ),

                        SizedBox(height: 3.h),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          Positioned(
            top: 165,
            left: 20,
            child: Container(
              height: 13.h,
              width: 30.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/profile.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customChip({required String title, required String image}) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(width: 6),
          Image.asset(image, height: 16, width: 16),
        ],
      ),
    );
  }

  Widget foodItemCard({
    required String image,
    required String title,
    required String desc,
    required bool isVeg,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xFF006B2E)),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(13),
                ),
                child: Image.network(
                  image,
                  height: 95,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        foodTypeIcon(isVeg),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      desc,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(height: 7),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹200",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text("Serves 2", style: TextStyle(fontSize: 11)),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Row(
                      children: [
                        Text("4.8", style: TextStyle(fontSize: 12)),
                        SizedBox(width: 8),
                        Icon(Icons.star, size: 15, color: Colors.orange),
                        Icon(Icons.star, size: 15, color: Colors.orange),
                        Icon(Icons.star, size: 15, color: Colors.orange),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -18,
          left: 45,
          right: 45,
          child: Container(
            height: 35,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color(0xFFE9F3EF),
              border: Border.all(color: const Color(0xFF006B2E)),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              "+Add",
              style: TextStyle(
                color: Color(0xFF005A18),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Widget biryaniItemCard({
  required String title,
  required String desc,
  required String price,
  required String image,
}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  foodTypeIcon(false),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                desc,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 13),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 6,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    price,
                    style: const TextStyle(
                      color: Color(0xFF006B2E),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text("4.8", style: TextStyle(fontSize: 12)),
                  const Icon(Icons.star, color: Colors.orange, size: 14),
                  const Icon(Icons.star, color: Colors.orange, size: 14),
                  const Icon(Icons.star, color: Colors.orange, size: 14),
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
                image,
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: -10,
              left: 18,
              right: 18,
              child: Container(
                height: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFFE9F3EF),
                  border: Border.all(color: const Color(0xFF006B2E)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "+Add",
                  style: TextStyle(
                    color: Color(0xFF005A18),
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
}

Widget foodTypeIcon(bool isVeg) {
  return Container(
    height: 15,
    width: 15,
    decoration: BoxDecoration(
      border: Border.all(color: isVeg ? Colors.green : Colors.red),
    ),
    child: Center(
      child: Icon(
        isVeg ? Icons.circle : Icons.change_history,
        size: 9,
        color: isVeg ? Colors.green : Colors.red,
      ),
    ),
  );
}
