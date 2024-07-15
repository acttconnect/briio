import 'dart:convert';
import 'package:brij_jeweller/screens/pages/cart_page.dart';
import 'package:brij_jeweller/utils/globel_veriable.dart';
import 'package:brij_jeweller/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../utils/const.dart';
import '../../widgets/diolog.dart';

class BuyNow extends StatefulWidget {
  const BuyNow(
      {Key? key, this.productId, this.goldPurity, this.wt, this.bangleSize})
      : super(key: key);
  final String? productId;
  final String? goldPurity;
  final String? wt;
  final String? bangleSize;
  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  final _formKey = GlobalKey<FormState>();
  final townEditingController = TextEditingController();
  final landMarkEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController();
  final numberdEditingController = TextEditingController();
  final companyNameEditingController = TextEditingController();
  final cityEditingController = TextEditingController();
  final gstEditingController = TextEditingController();
  final hallmarksController = TextEditingController();
  final stateController = TextEditingController();
  final pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstNameField = TextFormField(
        autofocus: false,
        controller: townEditingController,
        keyboardType: TextInputType.name,
        validator: (value) {
          RegExp regex = RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ("First Name cannot be Empty");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid name(Min. 3 Character)");
          }
          return null;
        },
        onSaved: (value) {
          townEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.house_outlined),
          contentPadding: const EdgeInsets.all(12),
          hintText: "Town",
          labelText: "Town",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    final secondNameField = TextFormField(
        autofocus: false,
        controller: landMarkEditingController,
        keyboardType: TextInputType.name,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Second Name cannot be Empty");
          }
          return null;
        },
        onSaved: (value) {
          landMarkEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.location_on_sharp),
          contentPadding: const EdgeInsets.all(12),
          hintText: "Landmark *",
          labelText: 'Landmark',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    final numberdField = TextFormField(
        autofocus: false,
        controller: numberdEditingController,
        keyboardType: TextInputType.number,
        validator: (value) {
          RegExp regex = RegExp(r'^.{9,}$');

          if (value!.isEmpty) {
            return ("Second number cannot be Empty");
          }
          if (!regex.hasMatch(value)) {
            return 'Enter the valid contact number';
          }
          return null;
        },
        onSaved: (value) {
          numberdEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.call),
          contentPadding: const EdgeInsets.all(12),
          hintText: "Mobile No *",
          labelText: "Mobile No.",
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
            return (" cannot be Empty");
          }
          if (!regex.hasMatch(value)) {
            return 'Enter the valid Pin Code ';
          }
          return null;
        },
        onSaved: (value) {
          pinCodeController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.scatter_plot),
          contentPadding: const EdgeInsets.all(12),
          hintText: "Pin-Code *",
          labelText: "Pin-Code",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    final stateNameField = TextFormField(
        autofocus: false,
        controller: stateController,
        keyboardType: TextInputType.name,
        validator: (value) {
          RegExp regex = RegExp(r'^.{3,}$');
          if (value!.isEmpty) {
            return ("First Name cannot be Empty");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid name(Min. 3 Character)");
          }
          return null;
        },
        onSaved: (value) {
          stateController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.location_city),
          contentPadding: const EdgeInsets.all(12),
          hintText: "Sate  *",
          labelText: 'State',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    final companyNameField = TextFormField(
      autofocus: false,
      controller: cityEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Second Name cannot be Empty");
        }
        return null;
      },
      onSaved: (value) {
        cityEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.warehouse_outlined),
        contentPadding: const EdgeInsets.all(12),
        hintText: "City *",
        labelText: 'City',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: () async {
          Get.off(() => const CartPage());
          return false;
        },
        child: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/logo.png'),
                  const Text(
                    "ADDRESS",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 15),
                  numberdField,
                  const SizedBox(height: 10),
                  secondNameField,
                  const SizedBox(height: 10),
                  firstNameField,
                  const SizedBox(height: 10),
                  companyNameField,
                  const SizedBox(height: 10),
                  stateNameField,
                  const SizedBox(height: 10),
                  pinCodeField,
                  const SizedBox(height: 30),
                  AuthButton.authButton(
                      btnColor: Colors.black,
                      text: 'Confirm Order',
                      context: context,
                      onPressed: () {
                        confirmOrder(numberdEditingController.text);
                        if (_formKey.currentState!.validate()) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                const CustomDialogs(
                              title: "Success",
                              description:
                                  "Your Order has been placed successfully",
                              buttonText: "OKAY",
                            ),
                          );
                        }
                      },
                      textColor: Colors.white),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void confirmOrder(String number) async {
    if (_formKey.currentState!.validate()) {
      order(number);
    }
  }

  void order(String number) async {
    String buyNow =
        '${apiUrl}submitOrderData?user_id=${GlobalK.userId}&address=${landMarkEditingController.text}${townEditingController.text},${cityEditingController.text},${stateController.text},${pinCodeController.text}&mobile=$number&product_id=${widget.productId}&bangle_size=${widget.bangleSize}&weight=${widget.wt}&gold_purity=${widget.goldPurity}';

    var response = await http.post(Uri.parse(buyNow));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      if (data['error'] == false) {
        Fluttertoast.showToast(msg: 'Order has been placed succesfully');
        Get.back();
      } else {
        Fluttertoast.showToast(msg: 'Something went wrong');
      }
    } else {
      Fluttertoast.showToast(msg: 'Internal server error');
    }
  }
}
