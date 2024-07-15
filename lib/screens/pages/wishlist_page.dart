import 'dart:convert';
import 'package:brij_jeweller/classes/add_cart.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../classes/wishlist.dart';
import '../../model/get_new_wishlist_product_model.dart';
import '../../utils/const.dart';
import '../../utils/globel_veriable.dart';
import '../../widgets/big_text.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  State<WishlistPage> createState() => _WishlistState();
}

class _WishlistState extends State<WishlistPage> {
  Future<GetNewWishlistProductModel> getWishList() async {
    final response = await http.post(Uri.parse(
        '${apiUrl}getWishlist?userid=${GlobalK.userId}&productid=1&productvariantid=1'));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return GetNewWishlistProductModel.fromJson(data);
    }
    return GetNewWishlistProductModel.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 1,
        title: const Text('Watchlist'),
      ),
      // bottomNavigationBar: const BottomBars(),
      body: FutureBuilder<GetNewWishlistProductModel>(
        future: getWishList(),
        builder: (context, snapshot) => snapshot.hasData
            ? snapshot.data!.error == false
                ? ListView.builder(
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (context, index) =>
                        wishlistCard(snapshot, index),
                  )
                : Center(
                    child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                            'https://thumbs.dreamstime.com/b/wishlist-icon-comic-style-like-document-cartoon-vector-illustration-white-isolated-background-favorite-list-splash-effect-218065056.jpg'),
                        const Text(
                          'Your Watchlist is Empty..',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
                  ))
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }

  Card wishlistCard(
      AsyncSnapshot<GetNewWishlistProductModel> snapshot, int index) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        // margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 140,
              width: 100,
              child: Image.network(
                '${imgPath}products/${snapshot.data!.data![index].product!.image!.toString()}',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // _addCartText(
                //     hintText: 'Name',
                //     valueText: snapshot.data!.data![index].product!.name!
                //         .toString()),
                Text(snapshot.data!.data![index].product!.productCode!,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                // _addCartText(
                //     valueText: snapshot
                //         .data!.data![index].product!.productCode!
                //         .toUpperCase()),
                _addCartText(
                    hintText: 'Category',
                    // valueText:
                        // '${snapshot.data!.data![index].product!.categoryId}'),
                ),
                _addCartText(
                    hintText: 'Gross Wt.',
                    valueText:
                        '${snapshot.data!.data![index].product!.nw} gm'),
                // _addCartText(
                //     hintText: 'Less Wt.',
                //     valueText:
                //         '${snapshot.data!.data![index].product!.stone} gm'),

                const SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              GlobalK.productId = snapshot
                                  .data!.data![index].productid
                                  .toString();
                            });
                            AddCard.addCart(
                                productId: snapshot
                                    .data!.data![index].productid
                                    .toString(), bangleSize: '2-8', goldPurity: '22k', weight: snapshot
                                    .data!.data![index].product!.gw!.toString(), instruction: '');
                          },
                          child: const Text(
                            'Add Cart',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16),
                          ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red.shade700),
                          onPressed: () async {
                            Wishlist.getDeleteWishlist(
                                    product_id: snapshot
                                        .data!.data![index].productid
                                        .toString(),
                                    productVarientId: snapshot
                                        .data!.data![index].productvariantid
                                        .toString())
                                .then((value) => setState(() {}));
                            setState(() {});
                          },
                          child: const Text(
                            'Remove',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16),
                          )),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }

  _addCartText({String? hintText, String? valueText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        BigText(
          text: '$hintText',
          size: 13,
        ),
        BigText(
          text: '  :  ',
          size: 13,
        ),
        BigText(
          text: '$valueText',
          size: 13,
        ),
      ],
    );
  }
}
