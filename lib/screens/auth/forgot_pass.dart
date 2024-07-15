import 'dart:convert';
import 'package:brij_jeweller/screens/auth/otp_verify.dart';
import 'package:brij_jeweller/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;
import '../../utils/const.dart';
import 'package:get/get.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final TextEditingController emailController = TextEditingController();
  bool isLoading = false;
  Future<void> sendOtp(String email) async {
    setState(() {
      isLoading = true;
    });
    final url = '${apiUrl}forget-password?email=$email';
    final response = await http.post(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      if (data['error'] == false) {
        setState(() {
          isLoading = false;
        });
        Get.snackbar(email, data['msg'], snackPosition: SnackPosition.BOTTOM);
        Get.to(() => const OtpVerify());
      } else {
        setState(() {
          isLoading = false;
        });
        Get.snackbar(email, data['msg'], snackPosition: SnackPosition.BOTTOM);
      }
    } else {
      setState(() {
        isLoading = false;
      });
      Fluttertoast.showToast(msg: 'Internal server error');
    }
  }

  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Email");
          }
          // reg expression for email validation
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.mail),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recover Password'),
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: key,
              child: SingleChildScrollView(
                reverse: true,
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    children: [
                      Lottie.asset('assets/forgetpass.json'),
                      emailField,
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () => Get.to(() => const OtpVerify()),
                            child: const Text(
                              'Already have code?',
                            )),
                      ),
                      AuthButton.authButton(
                        text: 'Send Email',
                        onPressed: () {
                          final isValid = key.currentState!.validate();
                          isValid ? sendOtp(emailController.text) : Container();
                        },
                        context: context,
                      )
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
