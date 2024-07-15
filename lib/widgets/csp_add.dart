// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/home/home.dart';
import '../screens/pages/cart_page.dart';
import '../utils/colors.dart';

class Csp extends StatefulWidget {
  Csp(
      {Key? key,
      this.index = 0,
      this.count = 1,
      required this.productId,
      this.height = 30,
      this.width = 70})
      : super(key: key);
  final int index;
  int count;
  final String? productId;
  final double? height;
  final double? width;

  @override
  State<Csp> createState() => _CspState();
}

class _CspState extends State<Csp> {
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
                  Get.to(() => const HomePage());

                  Get.to(() => const CartPage());
                },
                child: Container(
                  height: widget.height,
                  width: widget.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.buttonBackGroundColor),
                  child: const Center(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          size: 15,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Add',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : Container(
                //height: 30,width: 70,
                padding: const EdgeInsets.all(1.2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AppColors.buttonBackGroundColor,
                ),
                child: Container(
                  width: widget.width,
                  height: widget.height,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffff0e67)),
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
                              // CartApi.updateCart(id: widget.productId,count: '${widget.count}');
                            } else {
                              setState(() {
                                indexPage = null;
                                //  CartApi.deleteCart(productId: widget.productId);
                              });
                            }
                            Get.to(() => const HomePage());

                            Get.to(() => const CartPage());
                          },
                          child: const Icon(
                            Icons.remove,
                            size: 15,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          '${widget.count}',
                          style: const TextStyle(
                              color: Colors.black87, fontSize: 18),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.count = widget.count + 1;
                            });

                            // CartApi.updateCart(id: widget.productId,count: '${widget.count}');
                            Get.to(() => const HomePage());

                            Get.to(() => const CartPage());
                          },
                          child: const Icon(
                            Icons.add,
                            size: 15,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
      ],
    );
  }
}
