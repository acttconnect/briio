// ignore_for_file: unnecessary_null_comparison, prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:brij_jeweller/screens/home/product_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../../model/get_all_products_models.dart';
import '../../utils/const.dart';

class CategoriesProductPage extends StatefulWidget {
  const CategoriesProductPage({Key? key}) : super(key: key);

  @override
  State<CategoriesProductPage> createState() => _CategoriesProductPageState();
}

class _CategoriesProductPageState extends State<CategoriesProductPage> {
  Future<GetAllProductsModels> getProduct() async {
    final response = await http.post(Uri.parse('${apiUrl}AllProduct'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return GetAllProductsModels.fromJson(data);
    } else {
      return GetAllProductsModels.fromJson(data);
    }
  }

  var margin;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.black),
            title: Column(
              children: [
                //  Text('AC Repairing',style: GoogleFonts.lato(fontSize: 17,fontWeight: FontWeight.w600 ,color: Colors.white,height: 1),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Category',
                              style: GoogleFonts.lato(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                  height: 1),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Braclet',
                                  style: GoogleFonts.lato(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                      height: 1),
                                ),
                                const Icon(Icons.arrow_drop_down_sharp),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'caret',
                          style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                              height: 1),
                        ),
                        Row(
                          children: [
                            Text(
                              'All',
                              style: GoogleFonts.lato(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54,
                                  height: 1),
                            ),
                            const Icon(Icons.arrow_drop_down_sharp),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Bracelet',
                          style: GoogleFonts.lato(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                              height: 1),
                        ),
                        Row(
                          children: [
                            Text(
                              'All',
                              style: GoogleFonts.lato(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54,
                                  height: 1),
                            ),
                            const Icon(Icons.arrow_drop_down_sharp),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            )),
        body: FutureBuilder<GetAllProductsModels>(
          future: getProduct(),
          builder: (context, snapshot) => snapshot.hasData
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: 4 / 7,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10),
                  itemCount: snapshot.data!.product!.length,
                  itemBuilder: (context, index) => Container(
                        margin: margin ?? EdgeInsets.zero,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              offset: Offset.zero,
                              blurRadius: 15.0,
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => const ProductDetailsPage(
                                          productId: 1));
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 5),
                                      height: 180,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          alignment: Alignment.bottomCenter,
                                          image: NetworkImage(
                                            '${imgPath}products/${snapshot.data!.product![index].image!.toString()}',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (0 != null)
                                    Positioned(
                                      top: 16,
                                      right: 16,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                          color: Colors.black12,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                      snapshot.data!.product![index].name!
                                          .toString(),
                                      style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          height: 1.5,
                                        ),
                                      )),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text('Gross Wt ',
                                                style: TextStyle(fontSize: 12)),
                                            Text('Stone %',
                                                style: TextStyle(fontSize: 12)),
                                            Text('Net Wt',
                                                style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                        const Column(
                                          children: [
                                            Text('  :  '),
                                            Text('  :  '),
                                            Text('  :  '),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${snapshot.data!.product![index].gw!.toString()} ',
                                              style:
                                                  const TextStyle(fontSize: 12),
                                            ),
                                            Text(
                                                snapshot.data!.product![index]
                                                    .stone!
                                                    .toString(),
                                                style: const TextStyle(
                                                    fontSize: 12)),
                                            Text(
                                                '${snapshot.data!.product![index].nw!.toString()} ',
                                                style: const TextStyle(
                                                    fontSize: 12)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        margin: const EdgeInsets.only(
                                            left: 10, top: 5, bottom: 5),
                                        height: 25,
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
                                      )),
                                      Expanded(
                                          child: Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              height: 25,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  color: Colors.black12),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      height: 24,
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
                                                          const EdgeInsets.all(
                                                              1),
                                                      child: const Icon(
                                                          Icons.remove),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      height: 24,
                                                      decoration: const BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          7),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          7)),
                                                          color: Colors.white),
                                                      margin:
                                                          const EdgeInsets.all(
                                                              1),
                                                      child: const Icon(
                                                        Icons.add,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ))),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.black38),
                                          height: 25,
                                          child: Center(
                                              child: Text(
                                            'ADD TO CART',
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          )),
                                        )),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        const Icon(FontAwesomeIcons.whatsapp)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ))
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}
