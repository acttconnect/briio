import 'dart:convert';
import 'package:brij_jeweller/controller/auth_controller.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import '../utils/const.dart';
import '../utils/globel_veriable.dart';
import '../widgets/buttom_bar.dart';

class ProfileUtils {
  getLogin(String mail, String pass) async {
    String name = '${apiUrl}Login?email=$mail&password=$pass';
    try {
      final response = await post(Uri.parse(name));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        var rt = data['data']['email'];
        GlobalK.userId = data['data']['id'];
        GlobalK.userFName = data['data']['name'];

        GlobalK.userEmail = data['data']['email'];
        GlobalK.phone = data['data']['phone'];
        GlobalK.companyName = data['data']['company_name'];
        GlobalK.gst = data['data']['gst_number'];
        GlobalK.hallMarks = data['data']['holemarks_license'];
        GlobalK.address = data['data']['address'] ?? 'Not Updated';
        GlobalK.city = data['data']['city'] ?? 'Not Updated';
        GlobalK.state = data['data']['state'] ?? 'Not Updated';
        GlobalK.pincode = data['data']['pincode'] ?? 'Not Updated';

        if (mail == rt) {
          Fluttertoast.showToast(msg: 'Successfully login');
          Get.offAll(() => const HomePage5());
        } else {
          return Fluttertoast.showToast(msg: 'email id or password mismatch');
        }
      }
    } catch (e) {
      AuthLogin.logout();
      Fluttertoast.showToast(msg: "Account does'nt exists");
    }
  }
}
