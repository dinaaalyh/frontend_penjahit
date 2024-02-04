import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projek/components/button.dart';
import 'package:projek/models/product_model.dart';
import 'package:projek/pages/explore_page.dart';
import 'package:projek/pages/products_page.dart';
import 'package:projek/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var explore = ["Kebaya", "Gamis", "Blouse", "Rok", "Pasangan", "Kemeja"];
  var selectedExplore = 0;

  //State class
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _card(),
              const SizedBox(
                height: 3.0,
              ),
              _explore(),
              const SizedBox(
                height: 18.0,
              ),
              _categories(),
              const SizedBox(
                height: 10.0,
              ),
              _products(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        onTap: (index) {
          // Handle navigation based on the selected index
          switch (index) {
            case 0:
              // Navigate to Home
              Navigator.pushNamed(context, "homePage");
              break;
            case 1:
              // Navigate to Explore
              Navigator.pushNamed(context, "explorePage");
              break;
            case 2:
              // Navigate to Products
              Navigator.pushNamed(context, "productsPage");
              break;
            case 3:
              // Navigate to Profile
              Navigator.pushNamed(context, "profilePage");
              break;
          }
        },
        backgroundColor: Colors.transparent,
        color: Color.fromARGB(255, 1, 128, 139),
        height: 60,
        items: [
          Icon(
            Icons.home,
            size: 25,
            color: Colors.black,
          ),
          Icon(
            Icons.explore,
            size: 25,
            color: Colors.black,
          ),
          Icon(
            Icons.list,
            size: 25,
            color: Colors.black,
          ),
          Icon(
            Icons.person,
            size: 25,
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  ListView _products() {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => _product(products[index]),
        separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
        itemCount: products.length);
  }

  Container _product(ProductModel productModel) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF35385A).withOpacity(.12),
                blurRadius: 30,
                offset: const Offset(0, 2))
          ]),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              'assets/images/${productModel.image}',
              width: 83,
              height: 90,
            ),
          ),
          const SizedBox(
            width: 18,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productModel.name,
                style: GoogleFonts.merriweatherSans(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                "Rp${productModel.price}",
                style: GoogleFonts.merriweatherSans(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  for (int i = 0; i < 4; i++)
                    const Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                  const Icon(
                    FeatherIcons.star,
                    size: 13,
                    color: Colors.amber,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Align _categories() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 13.0),
        child: RichText(
          text: TextSpan(
            text: "Designer Collection",
            style: GoogleFonts.merriweatherSans(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _explore() {
    return SizedBox(
      height: 36,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: selectedExplore == index
                  ? const Color.fromARGB(255, 1, 128, 139)
                  : const Color(0xFFF6F6F6),
              border: selectedExplore == index
                  ? Border.all(
                      color: const Color(0xFF3F3E3F).withOpacity(.22), width: 2)
                  : null,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              explore[index],
              style: GoogleFonts.manrope(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: selectedExplore == index
                      ? Colors.white
                      : const Color(0xFF3F3E3F).withOpacity(.3)),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: explore.length,
      ),
    );
  }

  Widget _card() {
    return SizedBox(
      height: 338,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/card_bg.png',
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 28,
              left: 295,
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "cartPage");
                },
                icon: const Icon(
                  FeatherIcons.shoppingBag,
                  size: 26,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 290,
              left: 210,
              child: SizedBox(
                width: 166, // Set your desired width
                height: 26, // Set your desired height
                child: MyButton(
                  onTap: () {
                    Navigator.pushNamed(context, "productsPage");
                  },
                  buttonText: 'Shop now',
                  buttonColor: const Color.fromARGB(255, 1, 128, 139),
                  borderRadius: 17.0,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 11.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textPadding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 0.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                    text: "SUMMER COLLECTION",
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      height: 10 / 100,
                    ),
                  )),
                  const Divider(
                    color: Colors.white,
                    thickness: 1,
                    height: 22,
                    indent: 0,
                    endIndent: 199,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "20% OFF\n",
                      style: GoogleFonts.merriweatherSans(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        height: 110 / 100,
                      ),
                      children: [
                        TextSpan(
                          text: "For Selection Spring Style",
                          style: GoogleFonts.roboto(
                            fontSize: 11,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            height: 175 / 100,
                          ),
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
