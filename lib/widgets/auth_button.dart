import 'package:brij_jeweller/utils/colors.dart';
import 'package:flutter/material.dart';

class AuthButton {
  static Widget authButton(
      {required String text,
      onPressed,
      context,
      Color btnColor = AppColors.buttonBackGroundColor,
      Color textColor = AppColors.mainBlackColor}) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(30),
      color: btnColor,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
