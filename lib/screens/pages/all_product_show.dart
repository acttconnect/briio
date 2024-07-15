// import 'dart:convert';
// import 'package:brij_jeweller/classes/all_product_show.dart';
// import '../../../model/get_category_id_by_product_model.dart';
// import 'package:brij_jeweller/screens/home/product_detail_page.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../classes/wishlist.dart';
// import '../../model/all_products_model.dart';
// import '../../model/new_all_product_model.dart';
// import '../../utils/const.dart';
// import '../../widgets/big_text.dart';
// import 'package:http/http.dart' as http;
//
// class AllProductShow extends StatefulWidget {
//   const AllProductShow({Key? key}) : super(key: key);
//
//   @override
//   State<AllProductShow> createState() => _AllProductShowState();
// }
//
// class _AllProductShowState extends State<AllProductShow> {
//   var counter = 1;
//   List<Product> products = [];
//
//
//   Future<AllProductsModel> getProduct() async {
//     final response = await http.post(Uri.parse('${apiUrl}AllProduct'));
//     var data = jsonDecode(response.body.toString());
//     if (response.statusCode == 200) {
//       return AllProductsModel.fromJson(data);
//     } else {
//       return AllProductsModel.fromJson(data);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 01),
// // height: 250,
//         child: FutureBuilder<NewAllProductModel>(
//             future: ShowAllProduct.getProduct(),
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return GridView.builder(
//                     gridDelegate:
//                         const SliverGridDelegateWithMaxCrossAxisExtent(
//                             maxCrossAxisExtent: 350,
//                             childAspectRatio: 5 / 11,
//                             crossAxisSpacing: 2,
//                             mainAxisSpacing: 2),
//                     //scrollDirection: Axis.horizontal,
//                     physics: const ScrollPhysics(),
//                     itemCount: snapshot.data!.product!.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         padding: const EdgeInsets.only(top: 2, bottom: 2),
//                         margin: const EdgeInsets.only(
//                             top: 1, left: 3, bottom: 5, right: 3),
//                         height: 300,
//                         width: 150,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(5),
//                             boxShadow: const [
//                               BoxShadow(
//                                   color: Color(0xFFe8e8e8),
//                                   blurRadius: 5.0,
//                                   offset: Offset(0, 5)),
//                               BoxShadow(
//                                   color: Colors.white, offset: Offset(-5, 0)),
//                               BoxShadow(
//                                   color: Colors.white, offset: Offset(-5, 0))
//                             ]),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Expanded(
//                               flex: 1,
//                               child: GestureDetector(
//                                   onTap: (() {
//                                     Get.to(() => ProductDetailsPage(productId: products[index].id!,));
//                                   }),
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                             image: NetworkImage(
//                                               '${imgPath}products/${snapshot.data!.product![index].image!.toString()}',
//                                             ),
//                                             fit: BoxFit.cover)),
//                                     child: Align(
//                                         alignment: Alignment.topRight,
//                                         child: GestureDetector(
//                                           onTap: (() async {
//                                             await Wishlist.getAddWishlist(
//                                                 product_id: snapshot
//                                                     .data!
//                                                     .productVariant![index]
//                                                     .productId!
//                                                     .toString(),
//                                                 productVarientId: '6');
//                                             //'${snapshot.data!.productVariant![index].id!.toString()}');
//                                           }),
//                                           child: const CircleAvatar(
//                                             backgroundColor: Colors.transparent,
//                                             child: Center(
//                                               child: Icon(
//                                                 Icons.favorite,
//                                                 size: 32,
//                                               ),
//                                             ),
//                                           ),
//                                         )),
//                                   )),
//                             ),
//                             Expanded(
//                                 child: Column(
//                               children: [
//                                 BigText(
//                                   text: snapshot.data!.product![index].name!
//                                       .toString(),
//                                   size: 15,
//                                   color: Colors.black87,
//                                 ),
//                                 _productText(
//                                     hintText: 'Code',
//                                     valueText: snapshot
//                                         .data!.product![index].productCode!
//                                         .toString()),
//                                 _productText(
//                                     hintText: 'Gross Wt',
//                                     valueText: snapshot
//                                         .data!.product![index].gw!
//                                         .toString()),
//                                 _productText(
//                                     hintText: 'Stone %',
//                                     valueText: snapshot
//                                         .data!.product![index].stone!
//                                         .toString()),
//                                 _productText(
//                                     hintText: 'Net Wt',
//                                     valueText: snapshot
//                                         .data!.product![index].nw!
//                                         .toString()),
//
//                                 Row(
//                                   children: [
//                                     Expanded(
//                                       child: Container(
//                                         margin: const EdgeInsets.only(
//                                             left: 10, top: 5, bottom: 5),
//                                         height: 30,
//                                         decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(7),
//                                             color: Colors.black12),
//                                         child: Container(
//                                           decoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(7),
//                                               color: Colors.white),
//                                           margin: const EdgeInsets.all(1),
//                                         ),
//                                       ),
//                                     ),
//                                     Expanded(
//                                         child: Container(
//                                             margin: const EdgeInsets.symmetric(
//                                                 horizontal: 10),
//                                             height: 30,
//                                             decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(7),
//                                                 color: Colors.black12),
//                                             child: Row(
//                                               children: [
//                                                 Expanded(
//                                                   child: Container(
//                                                     height: 29,
//                                                     decoration: const BoxDecoration(
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         7),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         7)),
//                                                         color: Colors.white),
//                                                     margin:
//                                                         const EdgeInsets.all(1),
//                                                     child: const Icon(
//                                                         Icons.remove),
//                                                   ),
//                                                 ),
//                                                 Expanded(
//                                                   child: Container(
//                                                     height: 29,
//                                                     decoration: const BoxDecoration(
//                                                         borderRadius:
//                                                             BorderRadius.only(
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             7),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         7)),
//                                                         color: Colors.white),
//                                                     margin:
//                                                         const EdgeInsets.all(1),
//                                                     child: const Icon(
//                                                       Icons.add,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ))),
//                                   ],
//                                 ),
//                                 const Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [],
//                                 ),
//
//                                 // GestureDetector(
//                                 //   onTap: () async {
//                                 //     await AddCard.addCard(
//                                 //         product_id:
//                                 //             "${snapshot.data!.product![index].id!.toString()}",
//                                 //         // "${snapshot.data!.productVariant![index].id.toString()}",
//                                 //
//                                 //         quantity: "$Counter");
//                                 //   },
//                                 //   child: Container(
//                                 //     margin: EdgeInsets.only(right: 3),
//                                 //     height: 40,
//                                 //     decoration: BoxDecoration(
//                                 //       borderRadius: BorderRadius.circular(10),
//                                 //       color: AppColors.buttonBackGroundColor,
//                                 //     ),
//                                 //     child: Center(
//                                 //       child: BigText(
//                                 //         text: 'Add To Cart',
//                                 //       ),
//                                 //     ),
//                                 //   ),
//                                 // ),
//                               ],
//                             ))
//                           ],
//                         ),
//                       );
//                     });
//               } else {
//                 return const Text('Loading:--');
//               }
//             }));
//   }
//
//   _productText({String? hintText, String? valueText}) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         BigText(
//           text: '$hintText',
//           size: 13,
//         ),
//         const SizedBox(
//           width: 10,
//           height: 1,
//         ),
//         BigText(text: ':'),
//         const SizedBox(
//           width: 10,
//           height: 1,
//         ),
//         BigText(
//           text: '$valueText',
//           size: 12,
//         )
//       ],
//     );
//   }
// }
