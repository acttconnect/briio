// ignore_for_file: prefer_typing_uninitialized_variables, deprecated_member_use

import 'dart:convert';
import 'package:brij_jeweller/utils/globel_veriable.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import '../../model/new_notification_model.dart';
import '../../utils/const.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  var data;
  Future<NewNotificationModel> getNotifiction() async {
    final response = await http
        .post(Uri.parse('${apiUrl}getnotifications?user_id=${GlobalK.userId}'));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
      if (data['error'] == false) {
        return NewNotificationModel.fromJson(data);
      }
    } else {
      Fluttertoast.showToast(msg: 'Internal server error');
    }
    throw Exception('Unable to load');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
          elevation: 1,
          title: const Text('Notification')),
      body: FutureBuilder<NewNotificationModel>(
        future: getNotifiction(),
        builder: (context, snapshot) => snapshot.hasData
            ? snapshot.data!.message!.isEmpty
                ? const Center(
                    child: Text('No Notification Yet...',
                        style: TextStyle(fontSize: 18)))
                : ListView.builder(
                    itemCount: snapshot.data!.message!.length,
                    itemBuilder: (context, index) => Card(
                      margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 235,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    snapshot.data!.message![index].productName
                                        .toString(),
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            height: 1.5)),
                                  ),
                                  Text(
                                    snapshot.data!.message![index].title
                                        .toString(),
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    snapshot.data!.message![index].message
                                        .toString(),
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                        fontSize: 13,
                                        overflow: TextOverflow.ellipsis,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(snapshot.data!.message![index].createdAt!
                                    .split('T')
                                    .first),
                                Text(snapshot.data!.message![index].createdAt!
                                    .split('T')
                                    .last
                                    .split('.')
                                    .first
                                    .substring(0, 5))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
