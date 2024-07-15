import 'dart:convert';
import 'package:http/http.dart' as
http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../utils/const.dart';
import '../../widgets/auth_button.dart';
class OtpVerify extends StatefulWidget {
  const OtpVerify({super.key});

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
  bool isLoading = false;
  Future<void> changePassword(
      String newPass, String cnfPass, String email, String otp) async {
    final url =
        '${apiUrl}verifyOtp?otp=$otp&new_password=$newPass&password_confirmation=$cnfPass&email=$email';
    setState(() {
      isLoading = true;
    });
    var response = await http.post(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      if (data['error'] == false) {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: data['message']);
        Get.back();
      } else {
        setState(() {
          isLoading = false;
        });
        Fluttertoast.showToast(msg: data['message']);
      }
    } else {
      Fluttertoast.showToast(msg: 'Internal server error');
      setState(() {
        isLoading = false;
      });
    }
  }

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  bool isNew = true;
  bool isCNew = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Email: "),
                TextFormField(
                  controller: emailController,
                  validator: (value) =>
                      value!.isEmpty ? "This is required" : null,
                  decoration: const InputDecoration(
                    hintText: "Enter your email",
                  ),
                ),
                const SizedBox(height: 20),
                const Text("OTP: "),
                TextFormField(
                  controller: otpController,
                  keyboardType: TextInputType.number,
                  validator: (value) =>
                      value!.isEmpty ? "This is required" : null,
                  decoration: const InputDecoration(
                    hintText: "****",
                  ),
                ),
                const SizedBox(height: 20),
                const Text("New Password : "),
                TextFormField(
                  obscureText: isNew,
                  controller: newPasswordController,
                  validator: (value) => value!.isEmpty
                      ? "This is required"
                      : newPasswordController.text !=
                              confirmNewPasswordController.text
                          ? "Password did not match"
                          : null,
                  decoration: InputDecoration(
                    hintText: "Enter New Password",
                    suffixIcon: IconButton(
                      onPressed: () => setState(() => isNew = !isNew),
                      icon: isNew
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text("Confirm New Password : "),
                TextFormField(
                  obscureText: isCNew,
                  controller: confirmNewPasswordController,
                  validator: (value) => value!.isEmpty
                      ? "This is required"
                      : newPasswordController.text !=
                              confirmNewPasswordController.text
                          ? "Password did not match"
                          : null,
                  decoration: InputDecoration(
                    hintText: "Retype your New Password",
                    suffixIcon: IconButton(
                      onPressed: () => setState(() => isCNew = !isCNew),
                      icon: isCNew
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                AuthButton.authButton(
                  context: context,
                  text: 'Change Password',
                  onPressed: () {
                    final isValid = formKey.currentState!.validate();
                    String email = emailController.text;
                    String newPass = newPasswordController.text;
                    String cnfPass = confirmNewPasswordController.text;
                    if (isValid) {
                      changePassword(
                          newPass, cnfPass, email, otpController.text);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
