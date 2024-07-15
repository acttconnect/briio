// ignore_for_file: non_constant_identifier_names

import 'package:brij_jeweller/widgets/price_text.dart';
import 'package:flutter/material.dart';
import 'big_text.dart';

Widget SingleHomePageProduct() {
  return Container(
    padding: const EdgeInsets.only(top: 3, bottom: 8),
    margin: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
    height: 200,
    width: 150,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
              color: Color(0xFFe8e8e8), blurRadius: 5.0, offset: Offset(0, 5)),
          BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
          BoxShadow(color: Colors.white, offset: Offset(-5, 0))
        ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            'assets/jw2.png',
            fit: BoxFit.cover,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  BigText(
                    text: 'BRJ_75b',
                    size: 13,
                  ),
                  PriceText(text: '4587')
                ],
              ),
            )
          ],
        )
      ],
    ),
  );
}
