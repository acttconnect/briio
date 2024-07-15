// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  Color? color;
  final String text;
  double? size;
  double height;
  PriceText({
    Key? key,
    required this.text,
    this.color = Colors.red,
    this.size = 14,
    this.height = 1.3,
    //this.overflow =TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '₹ $text',
      maxLines: 1,
      style: TextStyle(color: color, fontSize: size, height: height),
    );
  }
}
