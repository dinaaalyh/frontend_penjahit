import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemAppBar extends StatelessWidget {
  // const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              FeatherIcons.chevronLeft,
              size: 27,
              color: Colors.black,
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(left: 20),
          //   child: Text(
          //     "Product",
          //     style: GoogleFonts.inter(
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.black,
          //     ),
          //   ),
          // ),
          Spacer(),
          Icon(
            FeatherIcons.shoppingBag,
            size: 22,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
