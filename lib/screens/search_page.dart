import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/models/product_model.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';
import 'package:tech_ecommerce_app/utils/images.dart';

// ignore: must_be_immutable
class SearchPage extends StatefulWidget {
  List<ProductModel>? products = [];
  List<ProductModel>? searched = [];
  bool ishas = true;
  SearchPage({super.key, required this.products});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.cE5E5E5,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 33, right: 43, top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(MyImages.iconArrowrLeft),
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: GoogleFonts.raleway(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: MyColors.c868686),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(18),
                        child: SvgPicture.asset(MyImages.iconSearch),
                      ),
                      filled: true,
                      fillColor: MyColors.cE5E5E5,
                      focusColor: MyColors.c5956E9,
                      border: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: MyColors.c5956E9),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: MyColors.c5956E9),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                    ),
                    onChanged: (value) {
                      setState(() {
                        value.isEmpty 
                          ? widget.searched = []
                          : widget.searched = searcheds(value, widget.products);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          widget.searched!.isEmpty
              ? const Expanded(child: Icon(Icons.file_copy))
              : Column(
                children: [
                  Expanded(
                      child: Padding(
                      padding: const EdgeInsets.only(left: 33, right: 33),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 35,
                                mainAxisSpacing: 56,
                                childAspectRatio: 0.75),
                        itemCount: widget.searched!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyColors.cFFFFFF,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 117,
                                  height: 95,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        top: -40,
                                        child: SizedBox(
                                          width: 117,
                                          height: 156,
                                          child: Image.asset(
                                            widget.searched![index].imageName,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: 110,
                                  child: Text(widget.searched![index].name,style:  GoogleFonts.raleway(fontSize: 22, fontWeight: FontWeight.w600, color: MyColors.c000000, height: 1), textAlign: TextAlign.center)),
                                const SizedBox(height: 7),
                                Text("From £${widget.searched![index].price}",style:  GoogleFonts.raleway(fontSize: 17, fontWeight: FontWeight.w700, color: MyColors.c5956E9), textAlign: TextAlign.center)
                              ],
                            ),
                          );
                        },
                      ),
                    )),
                ],
              ),
        ],
      ),
    );
  }
}

List<ProductModel> searcheds(
    String nameOfProduct, List<ProductModel>? database) {
  List<ProductModel> foundProducts = [];
  for (var i in ProductModel.all_products) {
    for (var j in i) {
      if (j.name.toLowerCase().contains(nameOfProduct.toLowerCase())) {
        foundProducts.add(j);
      }
    }
  }
  return foundProducts;
}
