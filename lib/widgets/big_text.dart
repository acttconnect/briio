// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BigText({
    Key? key,
    this.color = const Color(0xFF252525),
    required this.text,
    this.overflow = TextOverflow.ellipsis,
    this.size = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            color: color, fontSize: size, fontWeight: FontWeight.w400),
      ),
    );
  }
}
