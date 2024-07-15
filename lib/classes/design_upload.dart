import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import '../utils/const.dart';
import '../utils/globel_veriable.dart';

class UploadDesingImageUser {
  static Future<void> getUploadDesign({
    List<XFile>? images,
    String? carat,
    String? gram,
    String? descp,
    String? bangleSize,
  }) async {
    final url =
        '${apiUrl}imagepicker?cid=${GlobalK.userId}&product_name=Customized Design&category_id=3&caret=$carat&gram=$gram&description=$descp&imagepicker=$images&bangle_size=$bangleSize';
    var request = http.MultipartRequest('POST', Uri.parse(url));
    for (int i = 0; i < images!.length; i++) {
      request.files.add(
          await http.MultipartFile.fromPath('imagepicker[]', images[i].path));
    }
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      Fluttertoast.showToast(msg: 'Designs uploaded successfully');
      Get.defaultDialog(
        title: 'Congratulations',
        middleText: 'Customized Order Uploaded Successfully...',
        confirm: ElevatedButton(
            onPressed: () => Get.back(),
            child: const Text(
              'OK',
              style: TextStyle(color: Colors.white),
            )),
      );
    } else {
      Fluttertoast.showToast(msg: response.reasonPhrase.toString());
    }
  }
}
