import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_ecommerce_app/utils/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 55,
                top: 68,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(MyImages.iconMenu),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
