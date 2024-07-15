// ignore_for_file: prefer_typing_uninitialized_variables, deprecated_member_use
import 'package:brij_jeweller/screens/home/my_cart.dart';
import 'package:brij_jeweller/screens/pages/savedaddress.dart';
import 'package:brij_jeweller/utils/colors.dart';
import 'package:brij_jeweller/utils/globel_veriable.dart';
import 'package:brij_jeweller/widgets/big_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../../classes/product_detail.dart';
import '../../classes/whatsaap.dart';
import '../../controller/auth_controller.dart';
import '../../model/new_detail_page_model.dart';
import '../../utils/const.dart';
import '../../widgets/add_cart.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({
    Key? key,
    required int productId,
  }) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

TextEditingController msgController = TextEditingController();

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  var data;
  var counter = 1;
  int _currentIndex = 0;
  bool isLoader = false;
  bool isLoading = false;

  var c;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        isLoader = true;
      });
    });
    _loadProduct();
  }

  void _loadProduct() async {
    final response = await ProductById.getProductById();
    print(response);
  }

  bool obscureText = true;
  List<String> carat = ['18kt', '20kt', '22kt'];
  List<String> weight = ['35.00'];
  List<String> bangleSizes = [
    '2-2',
    '2-3',
    '2-4',
    '2-5',
    '2-6',
    '2-7',
    '2-8',
    '2-9',
    '2-10',
    '2-11',
    '2-12'
  ];
  String selectedCarat = '22kt';
  String selectedBangleSize = '2-8';
  String selectedinstruction = 'instruction';

  GestureDetector buildBottomSheet({required String size, Color? color}) {
    return GestureDetector(
      onTap: () =>
          c.addToCart(color: color.toString(), msg: msgController.text),
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.black,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag_outlined, color: Colors.black),
            SizedBox(width: 8),
            Text('Add To Cart', style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(GlobalK.productName!.toUpperCase()),
        foregroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartPage()));
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(3),
        child: FutureBuilder<NewDetailPageModel>(
            future: ProductById.getProductById(),
            builder: (context, snapshot) {
              print(snapshot.data);
              print(snapshot.connectionState);
              if (snapshot.hasData) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: snapshot.data!.product!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CarouselSlider.builder(
                                options: CarouselOptions(
                                  height: 320,
                                  aspectRatio: 16 / 9,
                                  viewportFraction: 0.8,
                                  initialPage: 0,
                                  enableInfiniteScroll: true,
                                  autoPlay: true,
                                  autoPlayInterval: const Duration(seconds: 3),
                                  enlargeCenterPage: true,
                                  scrollDirection: Axis.horizontal,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _currentIndex = index;
                                    });
                                  },
                                ),
                                itemCount: snapshot
                                    .data!.product![index].images.length,
                                itemBuilder: (BuildContext context,
                                    int itemIndex, int pageViewIndex) {
                                  String imageUrl = snapshot
                                      .data!.product![index].images[itemIndex]!;
                                  return Container(
                                    height: 320,
                                    margin: const EdgeInsets.all(5.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        imageUrl,
                                        fit: BoxFit.contain,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          print(imageUrl);
                                          return const Center(
                                            child: Icon(
                                              Icons.error_outline,
                                              color: Colors.red,
                                              size: 50,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  );
                                },
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  snapshot.data!.product![index].images.length,
                                  (index) => Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: _currentIndex == index
                                          ? Colors.black
                                          : Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: GestureDetector(
                                      onTap: () async {
                                        WhatsappUrl.lauchWhatsapp(
                                            number: 7021251102,
                                            message:
                                                '${imgPath}products/${snapshot.data!.product![index].image!}\n${snapshot.data!.product![index].name!}\nCode : ${snapshot.data!.product![index].productCode}\nAddress : \n${GlobalK.address}\n${GlobalK.city}\n${GlobalK.state}\n${GlobalK.pincode}');
                                      },
                                      child: Image.asset('assets/whatsapp.png',
                                          height: 45, width: 45),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 5, right: 5, left: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'DESCRIPTION',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    obscureText
                                        ? Text(
                                            snapshot
                                                .data!.product![index].shortDesc
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                fontSize: 14,
                                                color: Colors.black38),
                                          )
                                        : Text(
                                            ' ${snapshot.data!.product![index].shortDesc.toString()}',
                                            style:
                                                GoogleFonts.lato(fontSize: 14)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 12),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                color: Colors.white,
                                width: double.infinity,
                                child: const Text(
                                  'PRODUCT DETAILS',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ),
                              _boxes(
                                  'Category',
                                  snapshot.data!.product![index].cname
                                      .toString()),
                              _boxes(
                                  'Code',
                                  snapshot.data!.product![index].productCode
                                      .toString()),
                              _boxes('Gross Wt.',
                                  '${snapshot.data!.product![index].gw!} gram'),
                              _boxes("Net Wt.",
                                  '${snapshot.data!.product![index].nw!} gram'),
                              _boxes('Less Wt.',
                                  '${snapshot.data!.product![index].stone!} gram'),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 12),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                color: Colors.white,
                                width: double.infinity,
                                child: const Text('GOLD PURITY',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: DropdownButtonFormField<String>(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  value: selectedCarat,
                                  items: carat
                                      .map((e) => DropdownMenuItem<String>(
                                          value: e, child: Text(e)))
                                      .toList(),
                                  onChanged: (value) => setState(
                                    () => selectedCarat = value!,
                                  ),
                                  validator: (value) {
                                    if (value == "-----") {
                                      return 'Please select';
                                    }
                                    return null;
                                  },
                                  onSaved: (newValue) => setState(() {
                                    selectedCarat = newValue!;
                                  }),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 12),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                color: Colors.white,
                                width: double.infinity,
                                child: const Row(
                                  children: [
                                    Text('BANGLE SIZE',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16)),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: DropdownButtonFormField<String>(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  decoration: InputDecoration(
                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  value: selectedBangleSize,
                                  items: bangleSizes
                                      .map((e) => DropdownMenuItem<String>(
                                          value: e, child: Text(e)))
                                      .toList(),
                                  onChanged: (value) => setState(
                                    () => selectedBangleSize = value!,
                                  ),
                                  validator: (value) {
                                    if (value == "-----") {
                                      return 'Please select';
                                    }
                                    return null;
                                  },
                                  onSaved: (newValue) => setState(() {
                                    selectedBangleSize = newValue!;
                                  }),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 12),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                color: Colors.white,
                                width: double.infinity,
                                child: const Text(
                                  'WEIGHTS (GMS)',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: List.generate(
                                    weight.length,
                                    (index) => GestureDetector(
                                      child: Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 0, 10, 0),
                                        padding: const EdgeInsets.all(8.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: Colors.black26),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Text(
                                          snapshot.data!.product![index].gw!
                                              .toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                '   Add instruction(optional)',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 28, vertical: 10),
                                child: TextField(
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  controller: msgController,
                                  decoration: InputDecoration(
                                    hintText: 'Type here',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                            child: AddToTheCart(
                              productId: GlobalK.productId,
                              height: 100,
                              width: 180,
                              bangleSize: selectedBangleSize,
                              goldPurity: selectedCarat,
                              weight: snapshot.data!.product![0].gw!.toString(),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                if (GlobalK.userId.isNull) {
                                  AuthLogin.logout();
                                }
                                setState(() {
                                  GlobalK.productId;
                                });

                                Get.to(
                                  () => SavedAddress(
                                    forOrder: true,
                                    productId: int.parse(GlobalK.productId!),
                                    goldPurity: selectedCarat,
                                    bangleSize: selectedBangleSize,
                                    weight: snapshot.data!.product![0].gw
                                        .toString(),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: AppColors.logo2,
                                    borderRadius: BorderRadius.circular(7)),
                                child: const Center(
                                  child: Text(
                                    'Order',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }

  Widget _boxes(String details, String value) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(
                  text: details,
                ),
                BigText(
                  text: value,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }

  Shimmer getShimcsmerLodaing() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
