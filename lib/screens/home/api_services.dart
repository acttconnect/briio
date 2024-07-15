import 'dart:convert';

import 'package:brij_jeweller/model/background_image.dart';
import 'package:http/http.dart' as http;

import '../../../model/get_category_id_by_product_model.dart';
import '../../model/get_new_cart_model.dart';
import '../../model/home_model.dart';
import '../../utils/globel_veriable.dart';

class ApiServices {
  Future<List<BackImage>?> getBgImage() async {
    try {
      var response =
          await http.get(Uri.parse("https://briio.in/api/Categorie"));
      if (response.statusCode == 200) {
        final models = List.from(jsonDecode(response.body)['data'])
            .map((e) => BackImage.fromJson(e))
            .toList();
        return models;
      }
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  Future<List<SubCategories>> getSubCategory(int categoryId) async {
    try {
      var request = http.Request(
          'POST',
          Uri.parse(
              'https://briio.in/api/Subcategorie?category_id=$categoryId'));
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        final data = jsonDecode(await response.stream.bytesToString());
        final list = List.from(data['data']);
        return list.map((e) => SubCategories.fromJson(e)).toList();
      } else {
        throw "An error occurred: ${response.reasonPhrase}";
      }
    } catch (e) {
      throw "An error occurred: $e";
    }
  }

  Future<List<Product>> getProducts(int subCategoryId) async {
    try {
      var request = http.Request(
          'POST',
          Uri.parse(
              'https://briio.in/api/ProductBySubCategorieId?id=$subCategoryId'));
      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final rawData = await response.stream.bytesToString();
        final jsonData = jsonDecode(rawData);
        final List jsonProducts = jsonData['product'] ?? [];
        final result = jsonProducts.map(Product.fromJson).toList();
        return result;
      } else {
        throw "An error occurred: ${response.reasonPhrase}";
      }
    } catch (e) {
      throw "An error occurred: $e";
    }
  }

  Future<List<GetNewCartModel>?> getCard() async {
    try {
      var request = http.Request('GET',
          Uri.parse('https://briio.in/api/getCart?userid=${GlobalK.userId}'));
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        final rawData = await response.stream.bytesToString();
        final jsonData = jsonDecode(rawData);
        final List jsonCart = jsonData['data'] ?? [];
        final result = jsonCart.map(GetNewCartModel.fromJson).toList();
        return result;
      } else {
        throw "An error occurred: ${response.reasonPhrase}";
      }
    } catch (e) {
      throw "An error occurred: $e";
    }
  }
}
