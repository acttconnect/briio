import 'dart:convert';
import 'package:brij_jeweller/utils/globel_veriable.dart';
import 'package:http/http.dart' as http;
import '../model/new_detail_page_model.dart';
import '../utils/const.dart';

class ProductById {
  static Future<NewDetailPageModel> getProductById() async {
    var response = await http
        .post(Uri.parse('${apiUrl}ProductById?id=${GlobalK.productId}'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return NewDetailPageModel.fromJson(data);
    }
    return NewDetailPageModel.fromJson(data);
  }
}
