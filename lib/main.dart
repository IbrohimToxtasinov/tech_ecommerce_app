import 'package:flutter/material.dart';
import 'package:tech_ecommerce_app/screens/basket_page.dart';
import 'package:tech_ecommerce_app/screens/home_page.dart';
import 'package:tech_ecommerce_app/screens/single_item.dart';
import 'package:tech_ecommerce_app/screens/splash_page.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}