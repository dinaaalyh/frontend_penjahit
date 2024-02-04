import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartBottomNavBar extends StatelessWidget {
  // const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        height: 250,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total :",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rp200.000",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "checkoutPage");
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Shop now",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
