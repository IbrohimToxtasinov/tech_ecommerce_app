import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';


//TextFormField passwordsiz
Widget buildTextFormFieldWidget({
  name,
  name2,
  imagename,
}) {
  return Column(
    children: [
      Row(
        children: [
          SvgPicture.asset(imagename),
          const SizedBox(width: 13),
          Text(
            name2,
            style: GoogleFonts.raleway(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: MyColors.c868686),
          )
        ],
      ),
      TextFormField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.text,
        obscureText: false,
        decoration: InputDecoration(
          hintText: name,
          hintStyle: const TextStyle(color: MyColors.c868686),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: MyColors.c868686),
          ),
        ),
      ),
    ],
  );
}

//TextFormField password bilan
Widget buildTextFormFieldPassWidget({
  name,
  name2,
  imagename,
  isPas,
  showtext,
  VoidCallback? onTap
}) {
  return Column(
    children: [
      Row(
        children: [
          SvgPicture.asset(imagename),
          const SizedBox(width: 13),
          Text(
            name2,
            style: GoogleFonts.raleway(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: MyColors.c868686),
          )
        ],
      ),
      TextFormField(
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.text,
        obscureText: isPas,
        decoration: InputDecoration(
          hintText: name,
          suffix: TextButton(
            onPressed: onTap,
            child: Text(showtext, style: GoogleFonts.raleway(fontSize: 15, fontWeight: FontWeight.w600, color: MyColors.c5956E9),)),
          hintStyle: const TextStyle(color: MyColors.c868686),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: MyColors.c868686),
          ),
        ),
      ),
    ],
  );
}