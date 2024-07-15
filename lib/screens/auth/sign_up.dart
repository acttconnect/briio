// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'package:brij_jeweller/screens/auth/sign_in.dart';
import 'package:brij_jeweller/screens/pages/savedaddress.dart';
import 'package:brij_jeweller/utils/colors.dart';
import 'package:brij_jeweller/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import '../../utils/const.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final companyNameEditingController = TextEditingController();
  final gstEditingController = TextEditingController();
  final hallmarksController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final pinCodeController = TextEditingController();

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final fullNameField = TextFormField(
        autofocus: false,
        controller: nameController,
        keyboardType: TextInputType.name,
        validator: (value) {
          RegExp regex = RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ("Name cannot be Empty");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid name (Min. 3 Character)");
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.account_circle),
          contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          hintText: "Your Full Name *",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    final addressField = TextFormField(
        autofocus: false,
        controller: addressController,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Address cannot be Empty");
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.location_on),
          contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          hintText: "Your Address *",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final cityField = TextFormField(
        autofocus: false,
        controller: cityController,
        validator: (value) {
          if (value!.isEmpty) {
            return ("city name cannot be Empty");
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.real_estate_agent),
          contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          hintText: "Your City *",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    final stateField = TextFormField(
        autofocus: false,
        controller: stateController,
        validator: (value) {
          if (value!.isEmpty) {
            return ("state name cannot be Empty");
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.location_city),
          contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          hintText: "Your State *",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    final companyField = TextFormField(
        autofocus: false,
        controller: companyNameEditingController,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Company Name cannot be Empty");
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.account_circle),
          contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          hintText: "Company Name *",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    final numberField = TextFormField(
        autofocus: false,
        controller: phoneController,
        keyboardType: TextInputType.number,
        validator: (value) {
          RegExp regex = RegExp(r'^.{9,}$');

          if (value!.isEmpty) {
            return ("number cannot be Empty");
          }
          if (!regex.hasMatch(value)) {
            return 'Enter the valid contact number';
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.call),
          contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          hintText: "Mobile No *",
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
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.mail),
          contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          hintText: "Email *",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    final pinCodeField = TextFormField(
        autofocus: false,
        controller: pinCodeController,
        keyboardType: TextInputType.number,
        validator: (value) {
          RegExp regex = RegExp(r'^.{5,}$');

          if (value!.isEmpty) {
            return ("Pincode cannot be Empty");
          }
          if (!regex.hasMatch(value)) {
            return 'Enter the valid Pin Code ';
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.scatter_plot),
          contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          hintText: "Pin-Code *",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    final gstnumberField = TextFormField(
        autofocus: false,
        controller: gstEditingController,
        keyboardType: TextInputType.text,
        validator: (value) {
          if (value!.isEmpty) {
            return ("GST cannot be Empty");
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.menu_book_outlined),
          contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          hintText: "GST No *",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    final hallMarksField = TextFormField(
        autofocus: false,
        controller: hallmarksController,
        keyboardType: TextInputType.name,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Hallmark cannot be Empty");
          }
          return null;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.question_mark_sharp),
          contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          hintText: "Hallmarks Licence",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
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
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: _toggle,
        ),
        contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Form(
                
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 45),
                    Image.asset(
                      'assets/blg.png',
                      width: 150,
                      height: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    fullNameField,
                    const SizedBox(height: 10),
                    companyField,
                    const SizedBox(height: 10),
                    emailField,
                    const SizedBox(height: 10),
                    numberField,
                    const SizedBox(height: 10),
                    addressField,
                    const SizedBox(height: 10),
                    cityField,
                    const SizedBox(height: 10),
                    stateField,
                    const SizedBox(height: 10),
                    pinCodeField,
                    const SizedBox(height: 10),
                    gstnumberField,
                    const SizedBox(height: 10),
                    hallMarksField,
                    const SizedBox(height: 10),
                    passwordField,
                    const SizedBox(height: 10),
                    AuthButton.authButton(
                        text: 'Sign Up',
                        context: context,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            signUp(
                                name: nameController.text,
                                email: emailController.text,
                                address: addressController.text,
                                pass: passwordController.text,
                                companyName: companyNameEditingController.text,
                                gst: gstEditingController.text,
                                city: cityController.text,
                                state: stateController.text,
                                pinCode: pinCodeController.text,
                                holeMarks: hallmarksController.text,
                                phone: phoneController.text);
                          }
                        },
                        textColor: AppColors.titleColor),
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signUp(
      {required String name,
      required String email,
      required String address,
      required String pass,
      required String companyName,
      required String gst,
      required String city,
      required String state,
      required String pinCode,
      required String holeMarks,
      required String phone}) async {
    String url =
        '${apiUrl}Register?name=$name&email=$email&address=$address&password=$pass&company_name=$companyName&gst_number=$gst&city=$city&state=$state&pincode=$pinCode&holemarks_license=$holeMarks&phone=$phone';
    try {
      var response = await post(Uri.parse(url));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        if (data['error'] == false) {
          Fluttertoast.showToast(msg: 'Successfully created account');
          await saveAddressFromApi(
            id: data['data']['id'],
            name: name,
            mobile: phone,
            address: address,
            city: city,
            state: state,
            pincode: pinCode,
            landmark: 'NA',
          );
          Get.offAll(() => const SignIn());
        } else {
          Fluttertoast.showToast(msg: 'Email-Id already exist');
        }
      } else {
        Fluttertoast.showToast(
            msg: '${response.reasonPhrase} ${response.statusCode}');
      }
    } catch (e) {
      rethrow;
    }
  }
}
