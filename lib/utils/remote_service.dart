import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();
  static Future<List<dynamic>> fatchProducts() async {
    var response = await client.post(Uri.parse(''));
    if (response.statusCode == 200) {
      return fatchProducts();
    } else {
      return fatchProducts();
    }
  }
}
