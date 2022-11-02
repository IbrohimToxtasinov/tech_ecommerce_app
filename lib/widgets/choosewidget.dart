import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';

class ChooseButton extends StatefulWidget {
  final String textname;
  bool isSelected;
  VoidCallback onTap;

  ChooseButton({super.key , required this.textname, required this.isSelected, required this.onTap});

  @override
  State<ChooseButton> createState() => _ChooseButtonState();
}

class _ChooseButtonState extends State<ChooseButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.textname, style: GoogleFonts.raleway(fontSize: 17, fontWeight: FontWeight.w600, color: widget.isSelected ? MyColors.c5956E9 : MyColors.c9A9A9D),),
            const SizedBox(height: 10),
            Container(
              height: 3,
              width: widget.textname.length+70,
              decoration: BoxDecoration(
                color: widget.isSelected ? MyColors.c5956E9 : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}