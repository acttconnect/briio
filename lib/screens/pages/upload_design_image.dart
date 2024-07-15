import 'dart:io';
import 'package:brij_jeweller/utils/colors.dart';
import 'package:brij_jeweller/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

import '../../utils/const.dart';

class DesignImage extends StatefulWidget {
  const DesignImage({Key? key}) : super(key: key);

  @override
  State<DesignImage> createState() => _DesignImageState();
}

class _DesignImageState extends State<DesignImage> {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  TextEditingController descController = TextEditingController();
  File? image;
  bool showSpinner = false;
  final _picker = ImagePicker();

  Future getImage() async {
    final pickFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickFile != null) {
      image = File(pickFile.path);
      setState(() {});
    } else {}
  }

  Future<void> getUploadimage() async {
    setState(() {
      showSpinner = true;
    });
    var strem = http.ByteStream(image!.openRead());
    strem.cast();
    var length = await image!.length();
    var uri = Uri.parse(
        '${apiUrl}imagepicker?cid=1&imagepicker=22-03-23-1224117867.jpg');
    var request = http.MultipartRequest('POST', uri);
    request.fields["description"] = "$descController";
    var multiport = http.MultipartFile('imagepicker', strem, length);
    request.files.add(multiport);
    var response = await request.send();
    if (response.statusCode == 200) {
      showSpinner = false;
      Fluttertoast.showToast(msg: 'Succssfuly upload image');
      Get.back();
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.mainBlackColor),
      ),
      body: Form(
        key: globalKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: 200,
                //color: Colors.amber,
                child: image == null
                    ? GestureDetector(
                        onTap: () {
                          getImage();
                        },
                        child: const Center(
                          child: Text('Pick Image'),
                        ))
                    : Center(
                        child: Image.file(
                          File(image!.path).absolute,
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      )),
            Column(
              children: [
                //BigText(text: "Description"),
                TextFormField(
                  controller: descController,
                  decoration: const InputDecoration(
                    hintText: "Write Some About in this product",
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: AuthButton.authButton(
            text: "Upload Image",
            context: context,
            textColor: AppColors.mainBlackColor,
            onPressed: () {
              getUploadimage();
            }),
      ),
    );
  }
}
