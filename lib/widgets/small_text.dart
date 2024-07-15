// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double? size;
  double height;
  // TextOverflow overflow;

  SmallText(
      {Key? key,
      required this.text,
      this.color = const Color(0xFFccc7c5),
      this.size = 12,
      this.height = 1.2
      //this.overflow =TextOverflow.ellipsis
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(color: color, fontSize: size, height: height),
    );
  }
}
