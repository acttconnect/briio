// ignore_for_file: unnecessary_null_comparison

import 'package:brij_jeweller/classes/search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../classes/whatsaap.dart';
import '../../classes/wishlist.dart';
import '../../model/new_search_models.dart';
import '../../utils/const.dart';
import '../../utils/globel_veriable.dart';
import '../home/product_detail_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchText = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchText.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              controller: searchText,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search for products',
                suffixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          searchText.text.isEmpty
              ? Container()
              : Expanded(
                  child: FutureBuilder<NewSearchModel>(
                    future: SearchApi.getUserModule(searchText.text),
                    builder: (context, snapshot) => snapshot.hasData
                        ? snapshot.data!.data!.isEmpty
                            ? const Center(
                                child: Text('No Result found',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    )),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisSpacing: 10,
                                          childAspectRatio: 0.7,
                                          mainAxisSpacing: 10,
                                          crossAxisCount: 2),
                                  itemCount: snapshot.data!.data!.length,
                                  itemBuilder: (context, index) =>
                                      buildProductSearchCard(snapshot, index),
                                ),
                              )
                        : const Center(
                            child: CircularProgressIndicator(),
                          ),
                  ),
                ),
        ],
      ),
    );
  }

  Container buildProductSearchCard(
      AsyncSnapshot<NewSearchModel> snapshot, int index) {
    return Container(
      margin: const EdgeInsets.all(1),
      padding: const EdgeInsets.all(8),
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
          Stack(
            alignment: Alignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    GlobalK.productId =
                        '${snapshot.data!.data![index].id!.toString()} ';
                    GlobalK.productName =
                        '${snapshot.data!.data![index].name!.toString()} ';
                  });
                  Get.to(() => const ProductDetailsPage(
                        productId: 0,
                      ));
                },
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.bottomCenter,
                      image: NetworkImage(
                        '${imgPath}products/${snapshot.data!.data![index].image!.toString()}',
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
                                snapshot.data!.data![index].id.toString(),
                            productVarientId: '6');
                      });
                    },
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
                ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(snapshot.data!.data![index].name!.toString(),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Gross Wt ', style: TextStyle(fontSize: 12)),
                        Text('Stone %', style: TextStyle(fontSize: 12)),
                        Text('Net Wt', style: TextStyle(fontSize: 12)),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${snapshot.data!.data![index].gw!.toString()} ',
                          style: const TextStyle(fontSize: 12),
                        ),
                        Text(snapshot.data!.data![index].stone!.toString(),
                            style: const TextStyle(fontSize: 12)),
                        Text('${snapshot.data!.data![index].nw!.toString()} ',
                            style: const TextStyle(fontSize: 12)),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          WhatsappUrl.lauchWhatsapp(
                              number: 7021251102, message: 'Type your Query');
                        },
                        child: const Icon(FontAwesomeIcons.whatsapp))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
