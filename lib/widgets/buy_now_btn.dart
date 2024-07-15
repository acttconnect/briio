import 'package:brij_jeweller/screens/pages/buy_now_page.dart';
import 'package:brij_jeweller/utils/colors.dart';
import 'package:brij_jeweller/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyNowBtn extends StatefulWidget {
  const BuyNowBtn({Key? key}) : super(key: key);

  @override
  State<BuyNowBtn> createState() => _BuyNowBtnState();
}

class _BuyNowBtnState extends State<BuyNowBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const BuyNow());
      },
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.buttonBackGroundColor),
        height: 20,
        child: Center(
          child: SmallText(
            text: "Buy Now",
            color: Colors.blue,
            size: 18,
          ),
        ),
      ),
    );
  }
}
