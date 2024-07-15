import 'dart:convert';
import 'package:brij_jeweller/utils/const.dart';
import 'package:brij_jeweller/utils/globel_veriable.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MyController extends GetxController {
  RxBool isCartLoading = false.obs;
}

class CartOrder {
  static final c = Get.put(MyController());
  static Future<void> placeOrder(
      {required int productId,
      required int addressId}) async {
    final url =
        '${apiUrl}submitOrderData?user_id=${GlobalK.userId}&product_id=$productId&address_id=$addressId&payment_method=COD';
    c.isCartLoading.value = true;
    final response = await http.post(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      c.isCartLoading.value = false;
      if (data['error'] == false) {
        Get.back();
        Get.defaultDialog(
          title: 'Congratulations',
          middleText: 'Order has been placed successfully...',
          confirm: ElevatedButton(
              onPressed: () => Get.back(),
              child: const Text(
                'OK',
                style: TextStyle(color: Colors.white),
              )),
        );
        Fluttertoast.showToast(msg: 'Order Placed Successfully');
      } else {
        Fluttertoast.showToast(msg: 'Product not found');
      }
    } else {
      c.isCartLoading.value = false;
      Fluttertoast.showToast(msg: response.reasonPhrase.toString());
    }
  }
}
