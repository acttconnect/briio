// ignore_for_file: avoid_print, non_constant_identifier_names, deprecated_member_use, duplicate_ignore

import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsappUrl {
  static var contect = '7021251102';
  static var adnroid_url =
      "whatsapp://send?phone=$contect&text=Hi, I need some help";
  static var ios_url =
      "https://wa.me/$contect?text=${Uri.parse("Hi , I need some Help")}";
  static reachUs() async {
    if (Platform.isIOS) {
      if (await canLaunchUrl(Uri.parse(ios_url))) {
        // ignore: deprecated_member_use
        await launch(ios_url, forceSafariVC: false);
      } else {
        Fluttertoast.showToast(msg: 'Whatsapp is Not installed');
      }
    } else {
      if (await canLaunchUrl(Uri.parse(adnroid_url))) {
        // ignore: deprecated_member_use
        await launch(adnroid_url, forceSafariVC: false);
      } else {
        Fluttertoast.showToast(msg: 'Whatsapp is Not installed');
      }
    }
  }

  static void lauchWhatsapp({@required number, @required message}) async {
    String url = "whatsapp://send?phone=$number&text=$message";
    await canLaunch(url) ? launch(url) : print('Can`t whatsaap install');
  }
}
