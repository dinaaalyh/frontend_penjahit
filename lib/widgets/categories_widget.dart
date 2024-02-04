import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesWidget extends StatelessWidget {
  // const CategoriesWidget({super.key});
  final List<String> categoryTexts = [
    "Kebaya",
    "Gamis",
    "Blouse",
    "Rok",
    "Pasangan",
    "Kemeja",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 7; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   "assets/images/$i.jpeg",
                  //   width: 20,
                  //   height: 20,
                  // ),
                  Text(
                    categoryTexts[i - 1], // Use the corresponding text
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 11,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
