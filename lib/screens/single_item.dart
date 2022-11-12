import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/data/my_cart.dart';
import 'package:tech_ecommerce_app/models/product_model.dart';
import 'package:tech_ecommerce_app/screens/basket_page.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';
import 'package:tech_ecommerce_app/utils/images.dart';
import 'package:tech_ecommerce_app/widgets/build_button_widget.dart';

class SingleItem extends StatefulWidget {

  final ProductModel getData;
  const SingleItem({super.key, required this.getData});
  
  @override
  State<SingleItem> createState() => _SingleItemState();
}

class _SingleItemState extends State<SingleItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.cE5E5E5,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 33, right: 52, top: 71),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(MyImages.iconArrowrLeft),
                SvgPicture.asset(MyImages.iconHeart),
              ],
            ),
          ),
          Image.asset(
            widget.getData.imageName,
            width: double.infinity,
            height: 250,
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: MyColors.cFFFFFF,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(top: 29, left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.getData.name,
                      style: GoogleFonts.raleway(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: MyColors.c000000),
                    ),
                    const SizedBox(height: 20),
                    Text("Colors",
                        style: GoogleFonts.raleway(
                            fontSize: 17, fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 39),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildcolorsbutton(context,
                              name: "Sky Blue", colorName: MyColors.c7485C1),
                          buildcolorsbutton(context,
                              name: "Rose Gold", colorName: MyColors.cC9A19C),
                          buildcolorsbutton(context,
                              name: "Green", colorName: MyColors.cA1C89B),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 39,
                    ),
                    Text(
                      "Get Apple TV+ free for a year",
                      style: GoogleFonts.raleway(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: MyColors.c000000),
                    ),
                    const SizedBox(height: 7),
                    Container(
                      padding: const EdgeInsets.only(right: 30),
                      width: double.infinity,
                      child: Text(
                        "Available when you purchase any new iPhone, iPad, iPod Touch, Mac or Apple TV, £4.99/month after free trial.",
                        style: GoogleFonts.raleway(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: MyColors.c000000.withOpacity(0.6),
                            height: 1.5),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text("Full description",
                            style: GoogleFonts.raleway(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: MyColors.c5956E9)),
                        const SizedBox(
                          width: 7,
                        ),
                        SvgPicture.asset(MyImages.iconArrowrRight),
                        const Spacer(),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 33, left: 13, right: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total",
                              style: GoogleFonts.raleway(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: MyColors.c000000)),
                          Text("\$ ${widget.getData.price.toString()}",
                              style: GoogleFonts.raleway(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: MyColors.c5956E9))
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50, left: 10, bottom: 30),
                        child: InkWell(
                          onTap: () {
                            widget.getData.count++;
                            myCart.add(widget.getData);
                            Navigator.push(context, MaterialPageRoute(builder: (_) => CartPage()));
                          },
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                              color: MyColors.c5956E9,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                                child: Text("Add to Basket",
                                    style: GoogleFonts.raleway(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700, 
                                        color: MyColors.cFFFFFF))),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
