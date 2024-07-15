import 'dart:convert';
import 'package:brij_jeweller/utils/globel_veriable.dart';
import 'package:http/http.dart' as http;
import '../model/new_search_models.dart';
import '../utils/const.dart';

class SearchApi {
  static Future<NewSearchModel> getUserModule(String keywords) async {
    final url = '${apiUrl}search/$keywords';

    final response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body.toString());

    GlobalK.equal = data['Result'];
    if (response.statusCode == 200) {
      return NewSearchModel.fromJson(data);
    }
    throw Exception('Unable to load data');
  }
}
