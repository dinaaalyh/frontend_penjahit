import 'package:flutter/material.dart';
// import 'package:projek/pages/auth_page.dart';
import 'package:projek/pages/login.dart';
// import 'package:projek/pages/home_page.dart';
// import 'package:projek/pages/sign_up.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
          (route) => false);
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splashscreen.png'),
            fit: BoxFit.scaleDown, // atau sesuaikan dengan kebutuhan Anda
          ),
        ),
      ),
    );
  }
}
