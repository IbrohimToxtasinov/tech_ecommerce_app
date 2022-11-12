import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/models/product_model.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';
import 'package:tech_ecommerce_app/utils/images.dart';
import 'package:tech_ecommerce_app/widgets/choosewidget.dart';
import 'package:tech_ecommerce_app/widgets/tabbarviewcretae.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List pages = [
      TabbarCreate(color: Colors.black, models: ProductModel.smartwatches),
      TabbarCreate(color: Colors.black, models: ProductModel.laptops),
      TabbarCreate(color: Colors.black, models: ProductModel.laptops),
      TabbarCreate(color: Colors.black, models: ProductModel.laptops),
    ];
    return Scaffold(
      backgroundColor: MyColors.cE5E5E5,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 55,
                top: 68,
                right: 44
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(MyImages.iconMenu),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    width: 267,
                    height: 60,
                    decoration: BoxDecoration(
                      color: MyColors.cFFFFFF,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 2, color: MyColors.cC9C9C9)
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SvgPicture.asset(MyImages.iconSearch),
                          const SizedBox(width: 15),
                          Text("Search", style: GoogleFonts.raleway(fontSize: 17, fontWeight: FontWeight.w600, color: MyColors.c868686),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50, top: 55, bottom: 56),
              child: Text("Order online collect in store", style:GoogleFonts.raleway(fontSize: 34, fontWeight: FontWeight.w700, letterSpacing: 0.7, color: MyColors.c000000),),
            ),
            SizedBox(
              height: 35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      ChooseButton(
                        textname: "Wearable",
                        isSelected: selectedIndex == 0,
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                      ),
                      ChooseButton(
                        textname: "Laptops",
                        isSelected: selectedIndex == 1,
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                      ),
                      ChooseButton(
                        textname: "Phones",
                        isSelected: selectedIndex == 2,
                        onTap: () {
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                      ),
                      ChooseButton(
                        textname: "Drones",
                        isSelected: selectedIndex == 3,
                        onTap: () {
                          setState(() {
                            selectedIndex = 3;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: SizedBox( 
                height: 430,
                width: double.infinity,
                child: pages[selectedIndex],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
