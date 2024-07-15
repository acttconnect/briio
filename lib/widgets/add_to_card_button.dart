// ignore_for_file: must_be_immutable

import 'package:brij_jeweller/utils/colors.dart';
import 'package:brij_jeweller/widgets/big_text.dart';
import 'package:flutter/material.dart';

class AddToCardButton extends StatefulWidget {
  void onTab;
  AddToCardButton({Key? key, this.onTab}) : super(key: key);

  @override
  State<AddToCardButton> createState() => _AddToCardButtonState();
}

class _AddToCardButtonState extends State<AddToCardButton> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.buttonBackGroundColor),
        height: 20,
        child: Center(
          child: BigText(
            text: 'Add To Cart',
            color: AppColors.titleColor,
            size: 14,
          ),
        ),
      ),
    );
  }
}
