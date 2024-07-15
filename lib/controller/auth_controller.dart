import 'package:brij_jeweller/utils/globel_veriable.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../screens/auth/sign_in.dart';
import '../widgets/buttom_bar.dart';

class AuthLogin {
  static login(String userData, int id, String name, String mail,
      String pass) async {
    var any = await SharedPreferences.getInstance();
    var anyName = await SharedPreferences.getInstance();
    
    var anyId = await SharedPreferences.getInstance();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    any.setString('email', userData);
    anyName.setString('name', name);
   
    anyId.setInt('id', id);
    preferences.setString('mail', mail);
    preferences.setString('pass', pass);
    Get.offAll(const HomePage5());
  }

  static Future<bool> tryAutoLogin() async {
    var any = await SharedPreferences.getInstance();
    var anyName = await SharedPreferences.getInstance();
    var anylName = await SharedPreferences.getInstance();
    var anyId = await SharedPreferences.getInstance();
    if (!any.containsKey("email") &&
        !anyName.containsKey('name') &&
        !anylName.containsKey('lname') &&
        !anyId.containsKey('id')) {
      return false;
    } else {
      GlobalK.mail = any.getString('mail');
      GlobalK.pass = any.getString('pass');
      return true;
    }
  }

  static logout() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Get.offAll(() => const SignIn());
  }
}
