import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../classes/wishlist.dart';
import '../../../model/get_category_id_by_product_model.dart';
import '../../../utils/const.dart';
import '../../../utils/globel_veriable.dart';
import '../../home/api_services.dart';
import '../../home/product_detail_page.dart';
import 'filter_page.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.subcategoryId});

  final int subcategoryId;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Product> products = [];
  late Filters filters;
  bool isLoading = false;
  bool isLoader = false;
  bool isFavorite = false;

  bool isReady = false;

  _getProducts() async {
    isReady = true;
    final result = await ApiServices().getProducts(widget.subcategoryId);
    print(result.length);
    setState(() {
      products = result;
      isReady = false;
    });
  }

  void filterProducts() {
    setState(() {
      products = products.where((product) {
        return product.gw! >= filters.weightFrom &&
            product.gw! <= filters.weightTo;
      }).toList();
    });
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _getProducts();
    filters = Filters();
    _getProducts();
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        isLoading = false;
        isLoader = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Products',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              TextButton.icon(
                onPressed: () async {
                  final result = await Get.to(
                    () => FilterPage(filters: filters),
                  );
                  if (result != null) {
                    setState(
                      () {
                        filters = result;
                        filterProducts(); // Apply the filters
                      },
                    );
                  }
                },
                label: const Text('Filter'),
                icon: const Icon(Icons.filter_list),
              ),
            ],
          ),
          Expanded(
            child: isReady == true
                ? const Center(child: CircularProgressIndicator())
                : products.isEmpty || products == null
                    ? const Center(child: Text("No Products found."))
                    : GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.8,
                        ),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    GlobalK.productId =
                                        '${products[index].id!.toString()} ';
                                    GlobalK.productName =
                                        '${products[index].name!.toString()} ';
                                  });
                                  Get.to(() => ProductDetailsPage(
                                        productId: products[index].id!,
                                      ));
                                },
                                child: Card(
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.network(
                                        "${imgPath}products/${products[index].image}",
                                        height: 160,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.blueGrey[50],
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Text(products[index]
                                                .name
                                                .toString()),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.blueGrey[50],
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Text(
                                              "Gross wt: ${products[index].gw!.toString()}",
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (0 != null)
                                Positioned(
                                  top: 16,
                                  right: 16,
                                  child: GestureDetector(
                                    onTap: () async {
                                      await Wishlist.getAddWishlist(
                                        product_id:
                                            products[index].id.toString(),
                                        productVarientId: '6',
                                      );
                                      setState(
                                          () {}); // Trigger a rebuild after the async work is complete
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
          ),
        ],
      ),
    );
  }
}
