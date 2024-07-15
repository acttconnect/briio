// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:brij_jeweller/utils/globel_veriable.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../model/delete_wishlist_model.dart';
import '../model/get_new_wishlist_product_model.dart';
import '../utils/const.dart';

class Wishlist {
  static Future<void> getAddWishlist({
    String? product_id,
    String? productVarientId,
  }) async {
    var response = await http.post(Uri.parse(
        '${apiUrl}addWishlist?userid=${GlobalK.userId}&productid=$product_id&productvariantid=$productVarientId'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      if (data['error'] == true) {
        Fluttertoast.showToast(msg: data['message']);
      } else {
        Fluttertoast.showToast(msg: data['message']);
      }
    } else {
      Fluttertoast.showToast(msg: 'Something went wrong...');
    }
  }

  static Future<DeleteWishListModel> getDeleteWishlist({
    String? product_id,
    String? productVarientId,
  }) async {
    var response = await http.post(Uri.parse(
        '${apiUrl}setWishlist?userid=${GlobalK.userId}&productid=$product_id&productvariantid=$productVarientId'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      // Fluttertoast.showToast(msg: 'Succssfully Delete Product ');
      Get.to(() => Wishlist());
    }
    return DeleteWishListModel.fromJson(data);
  }

  static Future<GetNewWishlistProductModel> getWishlist({
    String? user_id,
    String? product_id,
    String? productVarientId,
  }) async {
    var response = await http.post(Uri.parse(
        '${apiUrl}getWishlist?userid=${GlobalK.userId}&productid=$product_id&productvariantid=$productVarientId'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      //Fluttertoast.showToast(msg: 'Show List of Product');
      //Get.to(()=>Wishlist());
    }
    return GetNewWishlistProductModel.fromJson(data);
  }
}
