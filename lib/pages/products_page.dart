import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projek/widgets/products_app_bar.dart';
import 'package:projek/widgets/categories_widget.dart';
import 'package:projek/widgets/items_widget.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  var selectedExplore = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: ListView(
        children: [
          ProductsAppBar(),
          Container(
            margin: EdgeInsets.only(top: 0),
            height: 1250,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 243, 242, 245),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 0),
                        height: 50,
                        width: 270,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Find item...",
                            hintStyle: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFCACACA),
                              height: 150 / 100,
                            ),
                            prefixIcon: const Icon(
                              FeatherIcons.search,
                              color: Color(0xFFADACAD),
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 15, bottom: 12, left: 15),
                  child: Text(
                    "Categories",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CategoriesWidget(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 15, bottom: 0, left: 15),
                  child: Text(
                    "Designer Collection",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 13.8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          // Handle navigation based on the selected index
          switch (index) {
            case 0:
              Navigator.pushNamed(context, "homePage");
              break;
            case 1:
              Navigator.pushNamed(context, "explorePage");
              break;
            case 2:
              Navigator.pushNamed(context, "productsPage");
              break;
            case 3:
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
}
