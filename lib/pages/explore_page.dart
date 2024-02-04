import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projek/models/explore_model.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  static List<ExploreModel> explores = [
    ExploreModel(
        "https://i.pinimg.com/736x/35/04/d2/3504d28e351863a2d1a005d1e416ae75.jpg",
        "Kebaya"),
    ExploreModel(
        "https://i.pinimg.com/564x/34/b9/95/34b995a96a89319e13239f3e25001220.jpg",
        "Gamis"),
    ExploreModel(
        "https://i.pinimg.com/564x/9b/7b/d8/9b7bd8c98649c0d6131242de095ef110.jpg",
        "Blouse"),
    ExploreModel(
        "https://i.pinimg.com/564x/15/3d/91/153d917c0042750c012835faff811cf6.jpg",
        "Rok"),
    ExploreModel(
        "https://i.pinimg.com/564x/ea/62/b9/ea62b93ea16f2242b633c0154476e1c6.jpg",
        "Pasangan"),
    ExploreModel(
        "https://i.pinimg.com/564x/96/63/cd/9663cd3898b27e86f97974d1a7a25056.jpg",
        "Kemeja"),
  ];

  // the list that we're going to display and filter
  List<ExploreModel> display_list = List.from(explores);

  void updateList(String value) {
    // function that will filter our list
    setState(() {
      display_list = explores
          .where((element) =>
              element.categories!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      FeatherIcons.chevronLeft,
                      size: 26,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "cartPage");
                    },
                    icon: const Icon(
                      FeatherIcons.shoppingBag,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                children: [
                  Text(
                    'Explore',
                    style: GoogleFonts.inter(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            _search(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: display_list.length,
                itemBuilder: (context, index) => Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "productsPage");
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Ink.image(
                          image: NetworkImage(display_list[index].image!),
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          display_list[index].categories!,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
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

  Widget _search() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 242, 242, 242),
          borderRadius: BorderRadius.circular(7)),
      child: TextFormField(
        onChanged: (value) => updateList(value),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: const Icon(
            FeatherIcons.search,
            color: Color(0xFFADACAD),
          ),
          hintText: "Find categories...",
          hintStyle: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: const Color(0xFFCACACA),
            height: 150 / 100,
          ),
        ),
      ),
    );
  }
}
