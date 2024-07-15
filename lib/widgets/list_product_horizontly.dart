// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

ListProductHorizantly({classes, int count = 5, double height = 40.0}) {
  return SizedBox(
    height: height,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: count,
      itemBuilder: (context, position) => Container(),
    ),
  );
}
