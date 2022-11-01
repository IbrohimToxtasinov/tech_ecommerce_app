import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/screens/login_page.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';
import 'package:tech_ecommerce_app/utils/images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: MyColors.c8381E8,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30, top: 50),
                child: Text(
                  "Find your Gadget",
                  style: GoogleFonts.raleway(
                      fontSize: 65,
                      fontWeight: FontWeight.w800,
                      color: MyColors.cFFFFFF),
                  textAlign: TextAlign.center,
                ),
              ),
              Image.asset(MyImages.imagesSplash, fit: BoxFit.cover, width: double.infinity,),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => const LoginPage()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 50, right: 50, top: 20),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                      color: MyColors.cFFFFFF,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "Get started",
                    style: GoogleFonts.raleway(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: MyColors.c5956E9),
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
