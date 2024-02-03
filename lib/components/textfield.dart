import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 47.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 1.0),
          // prefixIcon: Icon(Icons.person), // Ikon di sebelah kiri
          // suffixIcon: Icon(Icons.lock),   // Ikon di sebelah kanan
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color.fromRGBO(189, 189, 189, 1)),
            borderRadius:
                BorderRadius.circular(5.0), // Ubah nilai sesuai keinginan
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius:
                BorderRadius.circular(5.0), // Ubah nilai sesuai keinginan
          ),
          // fillColor: Color.fromRGBO(206, 204, 204, 1),
          fillColor: const Color.fromRGBO(189, 189, 189, 1),
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
