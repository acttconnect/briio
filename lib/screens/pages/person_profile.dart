// ignore_for_file: deprecated_member_use

import 'package:brij_jeweller/screens/auth/sign_in.dart';
import 'package:brij_jeweller/screens/pages/cart_page.dart';
import 'package:brij_jeweller/screens/pages/customorder_history.dart';
import 'package:brij_jeweller/screens/pages/enquiryform.dart';
import 'package:brij_jeweller/screens/pages/order_history.dart';
import 'package:brij_jeweller/screens/pages/savedaddress.dart';
import 'package:brij_jeweller/screens/pages/why_briio.dart';
import 'package:brij_jeweller/widgets/big_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../controller/auth_controller.dart';
import '../../utils/globel_veriable.dart';

class PersonProfile extends StatelessWidget {
  const PersonProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 1,
        title: const Text('Profile'),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) => SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.00),
                    image: const DecorationImage(
                        image: AssetImage('assets/blg.png'), opacity: 0.1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 20),
                    Icon(
                      CupertinoIcons.person_circle_fill,
                      size: 100,
                      color: Colors.black,
                    ),
                    // Container(
                    //   height: 108,
                    //   width: 108,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       image: const DecorationImage(
                    //           image: AssetImage('assets/male.png'),
                    //           fit: BoxFit.cover)),
                    // ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(
                            text: '${GlobalK.userFName}',
                            color: Colors.black,
                          ),
                          BigText(
                            text: '${GlobalK.companyName}',
                            color: Colors.black,
                          ),
                          BigText(
                              text: '${GlobalK.phone}', color: Colors.black),
                          BigText(
                              text: '${GlobalK.userEmail}',
                              color: Colors.black),
                          //BigText(text: 'Contact'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              menuTitles(context),
            ],
          ),
        ),
        future: null,
      ),
    );
  }
}

Widget menuTitles(context) {
  return Column(
    children: [
      menuTitle(Icons.shopping_bag_outlined, 'Cart', () {
        if (GlobalK.userId.isNull) {
          Get.offAll(() => const SignIn());
        } else {
          Get.to(() => const CartPage());
        }
      }),
      menuTitle(Icons.shopping_bag, 'Order History', () {
        if (GlobalK.userId.isNull) {
          Get.offAll(() => const SignIn());
        } else {
          Get.to(() => const OrderHistoryPage());
        }
      }),
      menuTitle(Icons.dashboard_customize, 'Custom Order History', () {
        if (GlobalK.userId.isNull) {
          Get.offAll(() => const SignIn());
        } else {
          Get.to(() => const CustomOrderHistory());
        }
      }),
      menuTitle(Icons.location_city, 'Saved Addresses',
          () => Get.to(() => const SavedAddress(forOrder: false))),
      menuTitle(Icons.group, 'About us',
          () => launchUrl(Uri.parse('https://briio.in/'))),
      menuTitle(Icons.security, 'Privacy Policy',
          () => launchUrl(Uri.parse('https://briio.in/privacy-policy'))),
      menuTitle(Icons.work_outline_outlined, 'Why BRIIO',
          () => Get.to(() => const WhyBriio())),
      menuTitle(Icons.description_outlined, 'Enquiry Form',
          () => Get.to(() => EnquiryForm())),
      menuTitle(Icons.logout, 'Logout', () {
        Get.defaultDialog(
          title: 'Confirm Logout',
          middleText: 'Are you sure you want to logout?',
          confirm: ElevatedButton(
            onPressed: () => AuthLogin.logout(),
            child: const Text(
              'Logout',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          cancel: ElevatedButton(
            onPressed: () => Get.back(),
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        );
      })
    ],
  );
}

Widget menuTitle(IconData icon, String text, onTab) {
  return GestureDetector(
    onTap: onTab,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              icon,
              color: Colors.black45,
            ),
            title: Text(text),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            ),
          ),
          SizedBox(height: 5, child: const Divider())
        ],
      ),
    ),
  );
}
