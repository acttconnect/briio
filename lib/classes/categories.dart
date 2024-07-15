import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/catogries_model.dart';
import '../utils/const.dart';

class CategoriesView {
  static Future<CatogriesModel> getPro() async {
    final response = await http
        .post(Uri.parse('${apiUrl}Categorie'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return CatogriesModel.fromJson(data);
    }
    return CatogriesModel.fromJson(data);
  }
}
