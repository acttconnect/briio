import 'package:brij_jeweller/classes/add_cart.dart';
import 'package:brij_jeweller/screens/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/get_new_cart_model.dart';

class CartIcon extends StatefulWidget {
  const CartIcon({Key? key, this.size = 30, this.color = Colors.white})
      : super(key: key);
  final double? size;
  final Color? color;
  @override
  State<CartIcon> createState() => _CartIconState();
}

class _CartIconState extends State<CartIcon> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<GetNewCartModel>(
      future: AddCard.getCard(),
      builder: (context, snapshot) => snapshot.hasData
          ? Container(
              margin: const EdgeInsets.only(right: 15),
              height: 40,
              width: 40,
              //color: Colors.blue,
              child: Stack(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(() => const CartPage());
                    },
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      size: widget.size,
                      color: widget.color,
                    ),
                  ),
                ],
              ),
            )
          : Container(),
    );
  }
}
