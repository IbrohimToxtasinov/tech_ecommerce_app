import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/models/product_model.dart';
import 'package:tech_ecommerce_app/screens/single_item.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';
import 'package:tech_ecommerce_app/utils/images.dart';

class TabbarCreate extends StatelessWidget {
  final Color color;
  final List<ProductModel> models;
  const TabbarCreate({super.key, required this.color, required this.models});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          SizedBox(
            height: 340,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: models.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => SingleItem(getData: models[index],)));
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 70,
                            right: 20,
                            left: 20,
                          ),
                          width: 220,
                          height: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // boxShadow: const [
                              //   BoxShadow(
                              //     color: Colors.grey,
                              //     blurRadius: 0.4,
                              //     spreadRadius: 1,
                              //     offset: Offset(0.4, 0.4),
                              //   )
                              // ],
                              color: MyColors.cFFFFFF),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 300,
                                height: 100,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                        top: -70,
                                        left: 5,
                                        right: 5,
                                        child: SizedBox(
                                            width: 300,
                                            height: 200,
                                            child: Image.asset(
                                              models[index].imageName,
                                            ))),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                models[index].name,
                                style: GoogleFonts.raleway(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: MyColors.c000000),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                models[index].desription,
                                style: GoogleFonts.raleway(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: MyColors.c868686),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 36,
                              ),
                              Text(
                                "\$ ${models[index].price.toString()}",
                                style: GoogleFonts.raleway(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: MyColors.c5956E9),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, top: 29),
            child: Row(
              children: [
                const Spacer(),
                Text("see more",
                    style: GoogleFonts.raleway(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: MyColors.c5956E9)),
                const SizedBox(width: 7),
                SvgPicture.asset(MyImages.iconArrowrRight),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
Container(
              width: 220,
              height: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
*/
