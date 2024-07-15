// ignore_for_file: must_be_immutable

import 'package:brij_jeweller/classes/add_cart.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class AddToTheCart extends StatefulWidget {
  AddToTheCart(
      {Key? key,
      this.index = 0,
      this.count = 1,
      required this.productId,
      this.height,
      this.width, required this.bangleSize, required this.goldPurity, required this.weight})
      : super(key: key);
  final int index;
  int count;
  final String bangleSize;
  final String goldPurity;
  final String weight;
  final String? productId;
  final double? height;
  final double? width;

  @override
  State<AddToTheCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddToTheCart> {
  int? indexPage;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        indexPage != widget.index
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    widget.count = 1;
                    indexPage = widget.index;
                  });
                  AddCard.addCart(
                    productId: widget.productId!,
                    bangleSize: widget.bangleSize,
                    goldPurity: widget.goldPurity,
                    weight: widget.weight, instruction: '',
                  );
                },
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.logo2)),
                  child: const Center(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Text(
                          'Add to Cart ',
                          style:
                              TextStyle(color: AppColors.logo2, fontSize: 16),
                        ),
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: AppColors.logo2,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.green)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (widget.count > 0) {
                              widget.count = widget.count - 1;
                            }
                          });
                          if (widget.count > 0) {
                            AddCard.UpdateCard(
                                product_id: widget.productId.toString(),
                                quantity: widget.count.toString());
                          } else {
                            setState(() {
                              indexPage = null;
                              //                            // CartApi.deleteCart(productId: widget.productId);
                              AddCard.getDeleteCard(
                                  product_id: widget.productId);
                            });
                          }
                        },
                        child: const Icon(
                          Icons.remove,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '${widget.count}',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.count = widget.count + 1;
                          });

                          // CartApi.updateCart(id: widget.productId,count: '${widget.count}');
                          AddCard.UpdateCard(
                              product_id: widget.productId.toString(),
                              quantity: widget.count.toString());
                        },
                        child: const Icon(
                          Icons.add,
                          size: 15,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              )
      ],
    );
  }
}
