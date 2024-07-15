// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../model/get_design_upload_image_model.dart';
import '../../utils/const.dart';

class HistoryUploadDesign extends StatefulWidget {
  const HistoryUploadDesign({Key? key, String? user_id}) : super(key: key);

  @override
  State<HistoryUploadDesign> createState() => _HistoryUploadDesignState();
}

class _HistoryUploadDesignState extends State<HistoryUploadDesign> {
  Future<GetDesignUploadImageModel> getUploadDesign() async {
    var response = await http
        .post(Uri.parse('${apiUrl}get/image?cid=32'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return GetDesignUploadImageModel.fromJson(data);
    }
    return GetDesignUploadImageModel.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) => Container()))
        ],
      ),
    );
  }
}
