import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';

Widget buildbuttonWidget(BuildContext context, {buttonname, color, textcolor, pagename}) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => pagename));
    },
    child: Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Center(
        child: Text(
          buttonname,
          style: GoogleFonts.raleway(
              fontSize: 20, fontWeight: FontWeight.w700, color: textcolor),
        ),
      ),
    ),
  );
}

Widget buildcolorsbutton(BuildContext context, {name, colorName}) {
  return Container(
    height: 40,
    width: 104,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.cFFFFFF,
        border: Border.all(width: 1, color: MyColors.cE3E3E3)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorName,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          name,
          style: GoogleFonts.raleway(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: MyColors.c000000),
        )
      ],
    ),
  );
}