import 'package:brij_jeweller/widgets/small_text.dart';
import 'package:flutter/material.dart';

class IconAndTex extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconColor;

   const IconAndTex({
     Key? key,
     required this.icon,
     required this.text,

     required this.iconColor
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,),
        SmallText(text: text,)
      ],
    );
  }
}
