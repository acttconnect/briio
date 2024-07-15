// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:brij_jeweller/utils/globel_veriable.dart';
import 'package:brij_jeweller/widgets/buttom_bar.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../model/add_wistlist_model.dart';
import '../utils/const.dart';

class Order {
  static Future<AddWistlistModel> getAddWishlist(
      {String? user_id,
      String? orderId,
      String? productVarientId,
      String? quantity}) async {
    var response = await http.post(Uri.parse(
        '${apiUrl}submitOrderData?user_id=${GlobalK.userId}&orderid=$orderId&mobile=8794563258&total=790.00&address=west radhapur, Tapash, dharmanagar, 799250&delivery_charge=100.00&final_total=890.00&payment_id=0&payment_method=COD'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      // Fluttertoast.showToast(msg: 'Succssfully Add Product ');
      Get.to(() => const HomePage5());
    }
    return AddWistlistModel.fromJson(data);
  }
}
