import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/sliders_model.dart';
import '../utils/const.dart';

class Sliders {
  static Future<SlidersModel> getSlider() async {
    final response =
        await http.post(Uri.parse("${apiUrl}Sliders"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return SlidersModel.fromJson(data);
    } else {
      return SlidersModel.fromJson(data);
    }
  }
}
