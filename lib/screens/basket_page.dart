import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/data/my_cart.dart';
import 'package:tech_ecommerce_app/models/purchase.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';
import 'package:tech_ecommerce_app/utils/images.dart';

class CartPage extends StatefulWidget {
  final Purchase myData=Purchase(myCart);
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.cE5E5E5,
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 76, right: 35, left: 35, bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(MyImages.iconArrowrLeft)),
                Text("Basket",
                    style: GoogleFonts.raleway(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: MyColors.c000000)),
                InkWell(
                    onTap: () {}, child: SvgPicture.asset(MyImages.iconDelete)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 65, left: 70),
            child: Container(
              height: 39,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MyColors.cD3F2FF,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(MyImages.iconNotification),
                  const SizedBox(
                    width: 6.5,
                  ),
                  Text(
                    "Delivery for FREE until the end of the month",
                    style: GoogleFonts.raleway(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: MyColors.c000000),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: myCart.length,
              itemBuilder: (context, index) {
                return buildcart(context, name: myCart.elementAt(index).name, count: myCart.elementAt(index).count );
              }
            )
          ),
        ],
      ),
    );
  }
}


Widget buildcart(BuildContext context, {name, count}) {
  return Column(
    children: [
      Container(
        child: Text(name),
      ),
      Container(
        child: Text("$count"),
      ),
    ],
  );
}