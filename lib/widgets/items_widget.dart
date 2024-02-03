import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemsWidget extends StatelessWidget {
  // const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
            margin: EdgeInsets.symmetric(vertical: 14, horizontal: 11),
            decoration: BoxDecoration(
              color: Color.fromARGB(187, 228, 228, 228),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(0),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "itemDetailPage");
                  },
                  child: Container(
                    margin: EdgeInsets.all(0),
                    width: 150,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/images/$i.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 1, top: 6, left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Gamis",
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp500.000",
                        style: GoogleFonts.inter(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: Colors.black,
                        size: 17,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// class ItemWidget extends StatelessWidget {
//   // const ItemWidget({super.key});

//   List img = [
//     'productd',
//     'productd',
//     'productd',
//     'productd',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       physics: NeverScrollableScrollPhysics(),
//       crossAxisCount: 2,
//       shrinkWrap: true,
//       childAspectRatio: (170 / 230),
//       children: [
//         for (int i = 0; i < img.length; i++)
//           Container(
//             padding: EdgeInsets.symmetric(vertical: 11, horizontal: 10),
//             margin: EdgeInsets.symmetric(vertical: 6, horizontal: 13),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   spreadRadius: 1,
//                   blurRadius: 2,
//                 ),
//               ],
//             ),
//             child: Column(
//               children: [
//                 InkWell(
//                   onTap: () {},
//                   child: Container(
//                     margin: EdgeInsets.all(0),
//                     child: Image.asset(
//                       "assets/images/${img[i]}.jpg",
//                       width: 170,
//                       height: 160,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//       ],
//     );
//   }
// }
