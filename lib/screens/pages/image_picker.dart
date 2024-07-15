// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'dart:io';
import 'package:brij_jeweller/utils/colors.dart';
import 'package:brij_jeweller/widgets/big_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import '../../classes/design_upload.dart';
import '../../utils/const.dart';

class UploadImageD extends StatefulWidget {
  const UploadImageD({Key? key}) : super(key: key);

  @override
  State<UploadImageD> createState() => _UploadImageDState();
}

class _UploadImageDState extends State<UploadImageD> {
  GlobalKey globalKey = GlobalKey<FormState>();
  TextEditingController caratController = TextEditingController();
  TextEditingController gramController = TextEditingController();
  TextEditingController produtDesecController = TextEditingController();
  TextEditingController bangleSizeController = TextEditingController();
  File? image;
  List<XFile> images = [];
  bool showSpinner = false;
  final _picker = ImagePicker();

  Future getImageCamera() async {
    final pickFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickFile != null) {
      image = File(pickFile.path);
      setState(() {});
    } else {}
  }

  Future<void> pickMultipleImages() async {
    final List<XFile> selectedImages = await _picker.pickMultiImage();
    if (selectedImages.isNotEmpty) {
      images = selectedImages;
      setState(() {});
    }
  }

  Future getImageGallery() async {
    final pickFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickFile != null) {
      image = File(pickFile.path);

      setState(() {});
    } else {}
  }

  Future getUpload() async {
    setState(() {
      showSpinner = true;
    });
    var strem = http.ByteStream(image!.openRead());
    strem.cast();
    var length = await image!.length();
    var uri = Uri.parse(
        '${apiUrl}imagepicker?cid=1&imagepicker=22-03-23-1224117867.jpg');
    var request = http.MultipartRequest('POST', uri);
    request.fields["description"] = "$produtDesecController";
    var multiport = http.MultipartFile('imagepicker', strem, length);
    request.files.add(multiport);
    var response = await request.send();
    if (response.statusCode == 200) {
      showSpinner = false;
      Fluttertoast.showToast(msg: 'Succssfuly upload image');
      Navigator.pop(context);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: const Text('CUSTOM ORDER'),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              uIForm(),
              buildButton(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildButton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  if (images.isEmpty) {
                    Fluttertoast.showToast(msg: 'Please Upload Image');
                  } else if (bangleSizeController.text.isEmpty ||
                      caratController.text.isEmpty ||
                      gramController.text.isEmpty ||
                      produtDesecController.text.isEmpty) {
                    Fluttertoast.showToast(msg: 'Please fill in all details');
                  } else {
                    _uploadImage(
                        allImage: images,
                        gram: gramController.text,
                        descp: produtDesecController.text,
                        carat: caratController.text,
                        bangleSize: bangleSizeController.text);
                  }
                },
                color: AppColors.logo2,
                child: const Center(
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  uIForm() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: images.isEmpty
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: pickMultipleImages,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12),
                                      borderRadius: BorderRadius.circular(8)),
                                  height: 60,
                                  width: 80,
                                  child: const Center(
                                    child: Icon(
                                      Icons.image,
                                      size: 40,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: BigText(
                            text: 'Select image',
                            color: Colors.black54,
                            size: 18,
                          ),
                        ),
                      ],
                    )
                  : Center(
                      child: GridView.builder(
                      itemCount: images.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                      ),
                      itemBuilder: (context, index) => Image.file(
                        File(images[index].path),
                        fit: BoxFit.cover,
                      ),
                    )),
            ),
            const SizedBox(
              height: 10,
            ),
            BigText(
              text: 'Bangle Size',
              size: 14,
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: bangleSizeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.text_fields),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: '2-2 to 2-16',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            BigText(
              text: 'Gold Purity',
              size: 14,
            ),
            const SizedBox(height: 5),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: caratController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.smart_button),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: 'In Carats',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            BigText(
              text: 'Weight',
              size: 14,
            ),
            const SizedBox(height: 5),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: gramController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.g_mobiledata_outlined),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: 'In Grams',
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            BigText(
              text: 'Remarks',
              size: 14,
            ),
            const SizedBox(height: 5),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: produtDesecController,
              minLines: 5,
              maxLines: 10,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.text_fields),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: 'Description about product in brief',
              ),
            ),
          ],
        ),
      ),
    );
  }

  _uploadImage(
      {required List<XFile> allImage,
      required String gram,
      required String descp,
      required String carat,
      required String bangleSize}) async {
    if (globalKey.currentState.isNull) {
      await UploadDesingImageUser.getUploadDesign(
              images: allImage,
              gram: gram,
              descp: descp,
              carat: carat,
              bangleSize: bangleSize)
          .then(
        (value) => setState(
          () {
            bangleSizeController.clear();
            caratController.clear();
            gramController.clear();
            produtDesecController.clear();
            images = [];
          },
        ),
      );
    }
  }
}
