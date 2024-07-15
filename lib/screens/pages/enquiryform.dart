import 'package:brij_jeweller/utils/globel_veriable.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:shimmer/shimmer.dart';

import '../../utils/cart_order.dart';

class EnquiryForm extends StatelessWidget {
  EnquiryForm({Key? key}) : super(key: key);

  final c = Get.put(MyController());
  final msgController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = GlobalK.userFName!;
    emailController.text = GlobalK.userEmail!;
    phoneController.text = GlobalK.phone!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enquiry Form'),
      ),
      body: mobileViewEnquiry(), // Call mobileViewEnquiry here
    );
  }

  Widget mobileViewEnquiry() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        height: 550,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Shimmer.fromColors(
              baseColor: Colors.black,
              highlightColor: Colors.white,
              child: Image.asset('assets/blg.png', height: 70),
            ),
            const SizedBox(height: 15),
            buildTextForm(controller: nameController, iconData: Icons.person),
            const SizedBox(height: 10),
            buildTextForm(controller: emailController, iconData: Icons.email),
            const SizedBox(height: 10),
            buildTextForm(
                controller: phoneController, iconData: Icons.phone_android),
            const SizedBox(height: 10),
            TextFormField(
              controller: msgController,
              maxLines: 5,
              //style: smallColorText,
              decoration: const InputDecoration(
                hintText: 'Type your enquiry in brief',
                //  hintStyle: smallColorText,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {},
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildTextForm(
      {required TextEditingController controller, required IconData iconData}) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      //style: smallColorText,
      decoration: InputDecoration(
        prefixIcon: Icon(iconData),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
