// ignore_for_file: deprecated_member_use

import 'package:brij_jeweller/classes/add_cart.dart';
import 'package:brij_jeweller/screens/pages/savedaddress.dart';
import 'package:brij_jeweller/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../model/get_category_id_by_product_model.dart';
import '../../model/get_new_cart_model.dart';
import '../../utils/const.dart';
import '../../utils/globel_veriable.dart';
import '../home/product_detail_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Product> products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: const Text('Cart'),
      ),
      body: FutureBuilder<GetNewCartModel>(
        future: AddCard.getCard(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final cartData = snapshot.data!.data; // Use a local variable

            if (cartData == null || cartData.isEmpty) {
              return Center(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 350,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/empty.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Text(
                        'Your cart is empty',
                        style: TextStyle(fontSize: 22),
                      )
                    ],
                  ),
                ),
              );
            } else {
              return Stack(
                children: [
                  ListView.builder(
                    itemCount: cartData.length,
                    itemBuilder: (context, index) => buildCart(snapshot, index),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: buildBottomsheet(
                        snapshot), // Make sure this handles null data correctly
                  ),
                ],
              );
            }
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }

  Container buildBottomsheet(AsyncSnapshot<GetNewCartModel> snapshot) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: const EdgeInsets.only(bottom: 15),
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Get.off(
            () => SavedAddress(
              forOrder: true,
              isCartOrder: true,
              productId: int.parse(snapshot.data!.data![0].productid!),
              cartId: snapshot.data!.data![0].id!.toInt(),
            ),
          );
        },
        child: Text(
          'Order Now',
          style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22)),
        ),
      ),
    );
  }

  Card buildCart(AsyncSnapshot<GetNewCartModel> snapshot, int index) {
    return Card(
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    GlobalK.productId =
                        '${snapshot.data!.data![index].products!.id} ';
                    GlobalK.productName =
                        '${snapshot.data!.data![index].products!.name.toString()} ';
                  });
                  Get.to(() => ProductDetailsPage(
                        productId: products[index].id!,
                      ));
                },
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.network(
                    '${imgPath}products/${snapshot.data!.data![index].products!.image!.toString()}',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    _addCartText(
                        hintText: 'Name',
                        valueText: snapshot.data!.data![index].products!.name!
                            .toString()),
                    _addCartText(
                        hintText: 'Net Wt',
                        valueText: snapshot.data!.data![index].products!.nw
                            .toString()),
                    // _addCartText(
                    //     hintText: 'Stone %',
                    //     valueText: snapshot.data!.data![index].products!.stone
                    //         .toString()),
                    // _addCartText(
                    //     hintText: 'Quantity',
                    //     valueText:
                    //         snapshot.data!.data![index].quantity.toString()),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                AddCard.getDeleteCard(
                        product_id:
                            snapshot.data!.data![index].productid.toString(),
                        quantity:
                            snapshot.data!.data![index].quantity.toString())
                    .then((value) => setState(() {}));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8)),
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(8),
                child: const Center(
                  child: Icon(
                    Icons.delete,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _addCartText({String? hintText, String? valueText}) {
    return Row(
      children: [
        BigText(
          text: '$hintText',
          size: 15,
        ),
        SizedBox(
          width: 10,
          child: BigText(
            text: '  :  ',
            size: 15,
          ),
        ),
        BigText(
          text: '$valueText',
          size: 15,
        ),
      ],
    );
  }
}
