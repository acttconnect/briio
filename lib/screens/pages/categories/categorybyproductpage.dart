// ignore_for_file: unnecessary_null_comparison
import 'dart:convert';

import 'package:brij_jeweller/screens/home/product_detail_page.dart';
import 'package:brij_jeweller/utils/globel_veriable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:shimmer/shimmer.dart';

import '../../../classes/whatsaap.dart';
import '../../../classes/wishlist.dart';
import '../../../model/get_category_id_by_product_model.dart';
import '../../../model/search_to.dart';
import '../../../utils/const.dart';
import 'filter_page.dart';

class CategoryByProduct extends StatefulWidget {
  const CategoryByProduct({Key? key}) : super(key: key);

  @override
  State<CategoryByProduct> createState() => _CategoryByProductState();
}

class _CategoryByProductState extends State<CategoryByProduct> {
  get margin => null;
  bool isLoader = false;
  var count = 1;
  var count1 = 2;
  int? index1;
  int? indexPage;
  bool isSort = false;
  bool isReverse = false;

  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    filters = Filters();
    initializeProducts();
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        isLoading = false;
        isLoader = true;
      });
    });
  }

  List<Product> products = [];

  void filterProducts() {
    setState(() {
      products = products.where((product) {
        return product.gw! >= filters.weightFrom &&
            product.gw! <= filters.weightTo;
      }).toList();
    });
    setState(() {});
  }

  void initializeProducts() async {
    final result = await fetchProducts(isSort, isReverse);
    setState(() {
      products = result;
    });
  }

  Future<List<Product>> fetchProducts(bool sortOrNot, bool reverse) async {
    List<Product> product = [];
    final response = await http.post(
        Uri.parse('${apiUrl}ProductBySubCategorieId?id=${GlobalK.categoryId}'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var mainData = data['product'] ?? [];
      int length = mainData.length;
      for (int i = 0; i < length; i++) {
        product.add(Product.fromJson(mainData[i]));
      }
      if (sortOrNot) {
        product.sort((a, b) => a.nw!.compareTo(b.nw!));
      }
      if (reverse) {
        product.sort((a, b) => b.nw!.compareTo(a.nw!));
      }
      return product;
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future<Searchto> getSearch() async {
    final response =
        await http.get(Uri.parse('${apiUrl}searchbycat/$selectSp'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return Searchto.fromJson(data);
    } else {
      return Searchto.fromJson(data);
    }
  }

  int? selectIndex;
  String? selectSp;

  late Filters filters;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        foregroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Sub Category',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: const Text("By Weight (Low to high)"),
                            onTap: () {
                              setState(() {
                                isReverse = false;
                                isSort = !isSort;
                              });
                              Get.back();
                            },
                          ),
                          ListTile(
                            title: const Text("By Weight (High to low)"),
                            onTap: () {
                              setState(() {
                                isSort = false;
                                isReverse = !isReverse;
                              });
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.sort),
                  label: const Text('Sort By'),
                ),
                TextButton.icon(
                  onPressed: () async {
                    final result = await Get.to(
                      () => FilterPage(filters: filters),
                    );
                    if (result != null) {
                      setState(
                        () {
                          filters = result;
                          filterProducts();
                        },
                      );
                    }
                  },
                  label: const Text('Filter'),
                  icon: const Icon(Icons.filter_list),
                ),
              ],
            ),
          ),
          selectSp == null
              ? Expanded(child: Builder(
                  builder: (
                    context,
                  ) {
                    if (products == null || products.isEmpty) {
                      return const Center(
                        child: Text('No data available.'),
                      ); // No Data
                    }
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 250,
                                  mainAxisExtent: 250,
                                  childAspectRatio: 4 / 7,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 8),
                          itemCount: products.length,
                          itemBuilder: (context, index) {
                            return Container(
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
                                    flex: 1,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              GlobalK.productId =
                                                  '${products[index].id!.toString()} ';
                                              GlobalK.productName =
                                                  '${products[index].name!.toString()} ';
                                            });
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductDetailsPage(
                                                        productId:
                                                            products[index].id!,
                                                      )),
                                            );
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                top: 5, left: 5, right: 5),
                                            height: 200,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                image: NetworkImage(
                                                  '${imgPath}products/${products[index].image!.toString()}',
                                                ),
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        if (0 != null)
                                          Positioned(
                                            top: 16,
                                            right: 16,
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() async {
                                                  await Wishlist.getAddWishlist(
                                                      product_id:
                                                          products[index]
                                                              .id
                                                              .toString(),
                                                      productVarientId: '6');
                                                });
                                              },
                                              child: Container(
                                                width: 30,
                                                height: 30,
                                                alignment: Alignment.center,
                                                decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: const Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                            products[index].name!.toString(),
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                              ),
                                            )),
                                      ),
                                      // SizedBox(
                                      //   height: 5,
                                      // ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Gross Wt',
                                                  style:
                                                      TextStyle(fontSize: 12)),
                                              // Text('Stone %',
                                              //     style: TextStyle(fontSize: 12)),
                                              // Text('Net Wt',
                                              //     style: TextStyle(fontSize: 12)),
                                            ],
                                          ),
                                          const Column(
                                            children: [
                                              Text(' : '),
                                              // Text('  :  '),
                                              // Text('  :  '),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${products[index].gw!.toString()} ',
                                                style: const TextStyle(
                                                    fontSize: 12),
                                              ),
                                              // Text(
                                              //     products[index].stone!
                                              //         .toString(),
                                              //     style: const TextStyle(
                                              //         fontSize: 12)),
                                              // Text(
                                              //     '${products[index].nw!.toString()} ',
                                              //     style: const TextStyle(
                                              //         fontSize: 12)),
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    );
                  },
                ))
              : Expanded(
                  child: FutureBuilder<Searchto>(
                  future: getSearch(),
                  builder: (context, snapshot) => snapshot.hasData
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 250,
                                      childAspectRatio: 4 / 7,
                                      crossAxisSpacing: 8,
                                      mainAxisSpacing: 8),
                              itemCount: products.length,
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
                                                  setState(() {
                                                    GlobalK.productId =
                                                        '${products[index].id!.toString()} ';
                                                    GlobalK.productName =
                                                        '${products[index].name!.toString()} ';
                                                  });
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ProductDetailsPage(
                                                              productId:
                                                                  products[
                                                                          index]
                                                                      .id!,
                                                            )),
                                                  );
                                                },
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 5),
                                                  height: 200,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      image: NetworkImage(
                                                        '${imgPath}products/${products[index].image!.toString()}',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              if (0 != null)
                                                Positioned(
                                                  top: 16,
                                                  right: 16,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      setState(() async {
                                                        await Wishlist
                                                            .getAddWishlist(
                                                                product_id: snapshot
                                                                    .data!
                                                                    .data![
                                                                        index]
                                                                    .id
                                                                    .toString(),
                                                                productVarientId:
                                                                    '6');
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      alignment:
                                                          Alignment.center,
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Colors.white,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: const Icon(
                                                        Icons
                                                            .favorite_border_outlined,
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                  snapshot
                                                      .data!.data![index].name!
                                                      .toString(),
                                                  style: GoogleFonts.lato(
                                                    textStyle: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 15,
                                                      height: 1.5,
                                                    ),
                                                  )),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 5),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Text('Gross Wt ',
                                                            style: TextStyle(
                                                                fontSize: 12)),
                                                        Text('Stone %',
                                                            style: TextStyle(
                                                                fontSize: 12)),
                                                        Text('Net Wt',
                                                            style: TextStyle(
                                                                fontSize: 12)),
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
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          '${products[index].gw!.toString()} ',
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 12),
                                                        ),
                                                        Text(
                                                            snapshot
                                                                .data!
                                                                .data![index]
                                                                .stone!
                                                                .toString(),
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        12)),
                                                        Text(
                                                            '${products[index].nw!.toString()} ',
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        12)),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 5),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          WhatsappUrl.lauchWhatsapp(
                                                              number:
                                                                  7021251102,
                                                              message:
                                                                  '${imgPath}products/${products[index].image!.toString()} Hello....');
                                                        },
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5.0),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors
                                                                    .green),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5),
                                                          ),
                                                          child: const Icon(
                                                            FontAwesomeIcons
                                                                .whatsapp,
                                                            color: Colors.green,
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                        )
                      : const Center(
                          child: CircularProgressIndicator(),
                        ),
                ))
        ],
      ),
    );
  }

  Shimmer getShimmerLodaing() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
