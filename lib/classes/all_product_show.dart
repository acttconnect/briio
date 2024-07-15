import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/new_all_product_model.dart';
import '../utils/const.dart';

class ShowAllProduct{
 static Future<NewAllProductModel> getProduct() async {
    final response = await http
        .post(Uri.parse('${apiUrl}AllProduct'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return NewAllProductModel.fromJson(data);
    } else {
      return NewAllProductModel.fromJson(data);
    }
  }
}