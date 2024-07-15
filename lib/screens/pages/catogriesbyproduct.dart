// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../classes/wishlist.dart';
import '../../model/new_catogreis_by_product.dart';
import '../../utils/const.dart';
import '../../widgets/big_text.dart';
import '../home/product_detail_page.dart';

class CatogriesByProduct extends StatefulWidget {
  final String? catoriesName;
  static String? catogiresId;

  const CatogriesByProduct({Key? key, this.catoriesName, catogiresId})
      : super(key: key);

  @override
  State<CatogriesByProduct> createState() => _CatogriesByProductState();
}

class _CatogriesByProductState extends State<CatogriesByProduct> {
  Future<NewCatogreisByProduct> getCategoryProduct(
      {String? Category_id = '3'}) async {
    var response = await http
        .post(Uri.parse('${apiUrl}ProductByCategorieId?category_id=3'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return NewCatogreisByProduct.fromJson(data);
    }
    return NewCatogreisByProduct.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black87),
          title: BigText(
            text: 'Gold',
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 01),
// height: 250,
          child: FutureBuilder<NewCatogreisByProduct>(
            future: getCategoryProduct(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 350,
                            childAspectRatio: 5 / 11,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2),
                    //scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.product!.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        margin: const EdgeInsets.only(
                            top: 1, left: 3, bottom: 5, right: 3),
                        height: 300,
                        width: 150,
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
                                    Get.to(
                                        () => ProductDetailsPage(productId: 1));
                                  }),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              '${imgPath}products/${snapshot.data!.product![index].image!.toString()}',
                                            ),
                                            fit: BoxFit.cover)),
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: GestureDetector(
                                          onTap: (() async {
                                            await Wishlist.getAddWishlist(
                                                product_id: snapshot
                                                    .data!
                                                    .productVariant![index]
                                                    .productId!
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
                                        )),
                                  )),
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                BigText(
                                  text: snapshot.data!.product![index].name!
                                      .toString(),
                                  size: 15,
                                  color: Colors.black87,
                                ),
                                _productText(
                                    hintText: 'Code',
                                    valueText: snapshot
                                        .data!.product![index].name
                                        .toString()),
                                _productText(
                                    hintText: 'Gross Wt',
                                    valueText: snapshot.data!.product![index].gw
                                        .toString()),
                                _productText(
                                    hintText: 'Stone %',
                                    valueText: snapshot
                                        .data!.product![index].stone!
                                        .toString()),
                                _productText(
                                    hintText: 'Net Wt',
                                    valueText: snapshot
                                        .data!.product![index].nw!
                                        .toString()),
                                // _productText(hintText: 'Price',valueText: snapshot.data!.productVariant![0].price!
                                //    .toString()),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 10, top: 5, bottom: 5),
                                        height: 30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            color: Colors.black12),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              color: Colors.white),
                                          margin: const EdgeInsets.all(1),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        child: Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            height: 30,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                color: Colors.black12),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    height: 29,
                                                    decoration: const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        7),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        7)),
                                                        color: Colors.white),
                                                    margin:
                                                        const EdgeInsets.all(1),
                                                    child: const Icon(
                                                        Icons.remove),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: 29,
                                                    decoration: const BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            7),
                                                                topRight: Radius
                                                                    .circular(
                                                                        7)),
                                                        color: Colors.white),
                                                    margin:
                                                        const EdgeInsets.all(1),
                                                    child: const Icon(
                                                      Icons.add,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ))),
                                  ],
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                ),
                              ],
                            ))
                          ],
                        ),
                      );
                    });
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }

  _productText({String? hintText, String? valueText}) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: BigText(
            text: '$hintText',
            size: 13,
          ),
        ),
        SizedBox(
          width: 10,
          child: BigText(
            text: ':',
            size: 13,
          ),
        ),
        Expanded(
          child: BigText(
            text: '$valueText',
            size: 13,
          ),
        ),
      ],
    );
  }
}
