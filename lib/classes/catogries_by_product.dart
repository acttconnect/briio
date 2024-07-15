// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:brij_jeweller/screens/pages/catogriesbyproduct.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../model/catogries_by_product_model.dart';
import '../utils/const.dart';

class CategoryProduct {
  static Future<CatogriesByProductModel> getCategoryProduct(
      {String? Category_id}) async {
    var response = await http.post(Uri.parse(
        '${apiUrl}ProductByCategorieId?category_id=$Category_id'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      Get.to(() => const CatogriesByProduct());
    }
    return CatogriesByProductModel.fromJson(data);
  }
}
