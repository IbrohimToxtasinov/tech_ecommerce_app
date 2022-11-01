import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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