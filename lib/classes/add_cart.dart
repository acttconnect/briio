// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import '../model/delete_card_model.dart';
import '../model/get_new_cart_model.dart';
import '../utils/const.dart';
import '../utils/globel_veriable.dart';

class AddCard {
  static Future<GetNewCartModel> addCart(
      {required String productId,
      required String goldPurity,
      required String bangleSize,
      required String instruction,
      required String weight}) async {
    final url =
        '${apiUrl}addCart/?userid=${GlobalK.userId}&productid=$productId&gold_purity=$goldPurity&bangle_size=$bangleSize&weight=$weight&instruction=$instruction';
    // print('AddCart URL: $url');
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      Fluttertoast.showToast(msg: 'Successfully Add Product');
    }
    throw Exception('Unable to load data');
  }

  static Future<GetNewCartModel> UpdateCard(
      {String? product_id, String? quantity}) async {
    var response = await http.get(Uri.parse(
        '${apiUrl}updateCart/?userid=${GlobalK.userId}&productid=$product_id&quantity=$quantity&productid=$product_id'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      Fluttertoast.showToast(msg: 'Show the  Product');
      // Get.snackbar('Qunatity', '$quantity');
      // Get.to(()=>CartPage());
      Fluttertoast.showToast(
          msg: '${response.statusCode} || ${response.reasonPhrase}');
    }
    return GetNewCartModel.fromJson(data);
  }

  static Future<DeleteCardModel> getDeleteCard(
      {String? product_id, String? quantity}) async {
    var response = await http.post(Uri.parse(
        '${apiUrl}deleteCart?userid=${GlobalK.userId}&productid=$product_id&quantity=$quantity'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      // Fluttertoast.showToast(msg: 'Successfully delete Product');
      //Get.to(()=>CartPage());
    }
    return DeleteCardModel.fromJson(data);
  }

  static Future<GetNewCartModel> getCard() async {
    try {
      var request = http.Request('GET',
          Uri.parse('https://briio.in/api/getCart?userid=${GlobalK.userId}'));

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        return GetNewCartModel.fromJson(
            jsonDecode(await response.stream.bytesToString()));
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      print(e.toString());
    }
    return GetNewCartModel.fromJson(jsonDecode(''));
  }
}
