import 'dart:convert';
import 'package:brij_jeweller/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../model/customorder_model.dart';
import '../../utils/globel_veriable.dart';
import '../home/container_radius.dart';
import 'package:http/http.dart' as http;

class CustomOrderHistory extends StatefulWidget {
  const CustomOrderHistory({super.key});

  @override
  State<CustomOrderHistory> createState() => _CustomOrderHistoryState();
}

class _CustomOrderHistoryState extends State<CustomOrderHistory> {
  final normalText =
      TextStyle(fontSize: 14, fontFamily: GoogleFonts.lato().fontFamily);

  final largeText =
      TextStyle(fontSize: 16, fontFamily: GoogleFonts.lato().fontFamily);

  final normalColorText = TextStyle(
      fontSize: 16,
      fontFamily: GoogleFonts.lato().fontFamily,
      color: Colors.amber.shade800);

  Future<CustomOrderModel> getCustomOrder() async {
    final url = '${apiUrl}getOrders?cid=${GlobalK.userId}';
    final response = await http.post(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['error'] == false) {
        return CustomOrderModel.fromJson(data);
      } else {
        Fluttertoast.showToast(msg: 'Something went wrong');
      }
    } else {
      Fluttertoast.showToast(
          msg:
              'Internal server error ${response.statusCode} ${response.reasonPhrase}');
    }
    throw Exception('Unable to load data');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Custom Order History'),
      ),
      body: FutureBuilder<CustomOrderModel>(
        future: getCustomOrder(),
        builder: (context, snapshot) => snapshot.hasData
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: snapshot.data!.data!.length,
                  itemBuilder: (context, ind) =>
                      buildCustomOrderCard(context, snapshot, ind),
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }

  Widget buildCustomOrderCard(BuildContext context,
      AsyncSnapshot<CustomOrderModel> snapshot, int index) {
    final size = MediaQuery.of(context).size;
    final item = snapshot.data!.data![index];
    List<String> images = [];
    images = item.imagepicker!.split(',');

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: RoundedContainer(
        padding: const EdgeInsets.all(8),
        isImage: false,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.builder(
              itemCount: images.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  width: size.width * 0.21,
                  child: Image.network(
                    '$imgPath/products/${images[index]}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text('Gold Purity : ${item.caret} Carat', style: normalText),
            Text('Bangle Size : ${item.bangleSize}', style: normalText),
            Text('Weight : ${item.gram}g', style: normalText),
            Text('Status : ${item.status}', style: normalColorText),
            Text('Remarks :', style: normalText),
            SizedBox(
              width: size.width - 50,
              child: Text(
                item.description!,
                style: normalText,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
