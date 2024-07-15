// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../classes/wishlist.dart';
import '../../model/best_seller_product_model.dart';
import '../../utils/const.dart';
import '../../widgets/big_text.dart';
import '../home/product_detail_page.dart';

class NewBestSeller extends StatefulWidget {
  const NewBestSeller({Key? key}) : super(key: key);

  @override
  State<NewBestSeller> createState() => _NewBestSellerState();
}

class _NewBestSellerState extends State<NewBestSeller> {
  Future<BesSellerProductModel> getBestSeller() async {
    var data;
    var response = await http.post(Uri.parse('${apiUrl}bestseller'));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());

      return BesSellerProductModel.fromJson(data);
    }

    return BesSellerProductModel.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BesSellerProductModel>(
      future: getBestSeller(),
      builder: (context, snapshot) {
        return snapshot.hasData
            ? LayoutBuilder(
                builder: (context, index) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.bestseller!.length,
                    itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.only(top: 2, bottom: 2),
                      margin: const EdgeInsets.only(
                          top: 1, left: 5, bottom: 5, right: 5),
                      height: 300,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xFFe8e8e8),
                                blurRadius: 5.0,
                                offset: Offset(0, 5)),
                            BoxShadow(
                                color: Colors.white, offset: Offset(-5, 0)),
                            BoxShadow(
                                color: Colors.white, offset: Offset(-5, 0))
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: GestureDetector(
                              onTap: (() {
                                Get.to(() => const ProductDetailsPage(
                                      productId: 0,
                                    ));
                              }),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          '${imgPath}products/${snapshot.data!.bestseller![index].image!.toString()}',
                                        ),
                                        fit: BoxFit.cover)),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: GestureDetector(
                                    onTap: (() async {
                                      await Wishlist.getAddWishlist(
                                          product_id: snapshot.data!
                                              .bestseller![index].productId!
                                              .toString(),
                                          productVarientId: '6');
//'${snapshot.data!.productVariant![index].id!.toString()}');
                                    }),
                                    child: const CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: Center(
                                        child: Icon(
                                          Icons.favorite,
                                          size: 32,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                BigText(
                                  text: snapshot.data!.bestseller![index].name!
                                      .toString(),
                                  size: 15,
                                  color: Colors.black54,
                                ),
                                _productText(
                                    hintText: 'Stone %',
                                    valueText: snapshot
                                        .data!.bestseller![index].stone!
                                        .toString()),
                                _productText(
                                    hintText: 'Net Wt',
                                    valueText: snapshot
                                        .data!.bestseller![index].nw!
                                        .toString()),
                                _productText(
                                    hintText: 'Price',
                                    valueText: snapshot
                                        .data!.bestseller![0].price!
                                        .toString()),

//                                   GestureDetector(
//                                     onTap: () async {
//                                       await AddCard.addCard(
//                                           product_id:
//                                           "${snapshot.data!.bestseller![index].id!.toString()}",
//                                           productVarientId: '6',
// // "${snapshot.data!.productVariant![index].id.toString()}",
//
//                                           quantity: "$Counter");
//                                     },
//                                     child: Container(
//                                       margin: EdgeInsets.only(right: 3),
//                                       height: 40,
//                                       decoration: BoxDecoration(
//                                         borderRadius:
//                                         BorderRadius.circular(10),
//                                         color:
//                                         AppColors.buttonBackGroundColor,
//                                       ),
//                                       child: Center(
//                                         child: BigText(
//                                           text: 'Add To Cart',
//                                         ),
//                                       ),
//                                     ),
//                                   ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            : Container();
      },
    );
  }

  _productText({String? hintText, String? valueText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BigText(
          text: '$hintText',
          size: 13,
        ),
        const SizedBox(
          width: 10,
          height: 1,
        ),
        BigText(text: ':'),
        const SizedBox(
          width: 10,
          height: 1,
        ),
        BigText(
          text: '$valueText',
          size: 12,
        )
      ],
    );
  }
}
