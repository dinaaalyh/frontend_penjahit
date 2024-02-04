import 'package:flutter/material.dart';
import 'package:projek/pages/cart_page.dart';
import 'package:projek/pages/checkout.dart';
import 'package:projek/pages/explore_page.dart';
import 'package:projek/pages/home_page.dart';
import 'package:projek/pages/item_detail_page.dart';
import 'package:projek/pages/login.dart';
import 'package:projek/pages/products_page.dart';
import 'package:projek/pages/profile_page.dart';
import 'package:projek/pages/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initializeDateFormatting('id_ID', null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set the initial route
      routes: {
        "/": (context) =>
            SplashScreen(), // Use SplashScreen as the initial route
        "homePage": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "explorePage": (context) => ExplorePage(),
        "productsPage": (context) => ProductsPage(),
        "profilePage": (context) => ProfilePage(),
        "itemDetailPage": (context) => ItemDetailPage(),
        "checkoutPage": (context) => CheckOutPage(),
      },
    );
  }
}
