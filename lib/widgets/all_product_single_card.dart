import 'package:brij_jeweller/widgets/price_text.dart';
import 'package:brij_jeweller/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'add_to_card_button.dart';
import 'big_text.dart';
import 'buy_now_btn.dart';

class AllProductSingleCard extends StatefulWidget {
  const AllProductSingleCard({Key? key}) : super(key: key);

  @override
  State<AllProductSingleCard> createState() => _AllProductSingleCardState();
}

class _AllProductSingleCardState extends State<AllProductSingleCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 2, bottom: 8),
      margin: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [
            BoxShadow(
                color: Color(0xFFe8e8e8),
                blurRadius: 5.0,
                offset: Offset(0, 5)),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              )),
              Expanded(
                  child: Column(
                children: [
                  SmallText(text: " Quantity"),
                  // AddCart(productId: ''),
                ],
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AddToCardButton(),
              const BuyNowBtn(),
            ],
          )
        ],
      ),
    );
  }
}
