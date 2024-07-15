// ignore_for_file: use_build_context_synchronously
import 'dart:convert';

import 'package:brij_jeweller/controller/auth_controller.dart';
import 'package:brij_jeweller/screens/auth/forgot_pass.dart';
import 'package:brij_jeweller/screens/auth/sign_up.dart';
import 'package:brij_jeweller/utils/colors.dart';
import 'package:brij_jeweller/widgets/auth_button.dart';
import 'package:brij_jeweller/widgets/buttom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

import '../../utils/const.dart';
import '../../utils/globel_veriable.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      String name = '${apiUrl}Login?email=$email&password=$password';

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
        if (email == rt) {
          AuthLogin.login(
              data['data']['email'], data['data']['id'], name, email, password);
          Fluttertoast.showToast(msg: 'Successfully login');
          Get.offAll(() => const HomePage5());
        } else if (email == '') {
          AuthLogin.logout();
          return Fluttertoast.showToast(msg: 'email id or password mismatch');
        } else if (password == '') {
          AuthLogin.logout();
          return Fluttertoast.showToast(msg: 'email id or password mismatch');
        } else {
          AuthLogin.logout();
          return Fluttertoast.showToast(msg: 'email id or password mismatch');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: _obscureText,
        validator: (value) {
          RegExp regex = RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
          return null;
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.vpn_key),
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: _toggle,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
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
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/blg.png',
                      width: 150,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Login to your Account",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    const SizedBox(height: 45),
                    emailField,
                    const SizedBox(height: 25),
                    passwordField,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => const ForgotPass())),
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )),
                      ],
                    ),
                    const SizedBox(height: 10),
                    AuthButton.authButton(
                        text: 'Login',
                        context: context,
                        textColor: Colors.black,
                        onPressed: () {
                          signIn(emailController.text, passwordController.text);
                        }),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text("Don't have an account?  "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                          child: const Text(
                            "Register Now",
                            style: TextStyle(
                                color: AppColors.logo2,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
