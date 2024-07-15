import 'dart:convert';
import 'package:brij_jeweller/utils/globel_veriable.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import '../../model/show_history.dart';
import '../../utils/const.dart';
import '../home/container_radius.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  Future<ShowOrderModel> getOrderHistory() async {
    final response = await post(
        Uri.parse('${apiUrl}getOrderData?user_id=${GlobalK.userId}'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      if (data['error'] == false) {
        return ShowOrderModel.fromJson(data);
      } else {
        Fluttertoast.showToast(msg: response.reasonPhrase.toString());
      }
    } else {
      Fluttertoast.showToast(msg: response.reasonPhrase.toString());
    }
    throw Exception('Unable to load data');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
        foregroundColor: Colors.black,
        title: const Text('Order History'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<ShowOrderModel>(
          future: getOrderHistory(),
          builder: (context, snapshot) => snapshot.hasData
              ? snapshot.data!.orders!.isEmpty
                  ? Center(
                      child: Text(
                        'You have not ordered any product yet',
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(fontSize: 16),
                        ),
                      ),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.orders!.length,
                      itemBuilder: (context, index) => OrdersCard(
                        snapshot: snapshot,
                        index: index,
                      ),
                    )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }
}

class OrdersCard extends StatelessWidget {
  final AsyncSnapshot<ShowOrderModel> snapshot;
  final int index;

  OrdersCard({
    super.key,
    required this.snapshot,
    required this.index,
  });
  final normalText =
      TextStyle(fontSize: 14, fontFamily: GoogleFonts.lato().fontFamily);
  final largeText =
      TextStyle(fontSize: 18, fontFamily: GoogleFonts.lato().fontFamily);
  final normalColorText = TextStyle(
      fontSize: 18,
      fontFamily: GoogleFonts.lato().fontFamily,
      color: Colors.amber.shade800);
  @override
  Widget build(BuildContext context) {
    final address = snapshot.data!.orders![index].address!;
    final orderId = snapshot.data!.orders![index].orderid;
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: RoundedContainer(
        padding: const EdgeInsets.all(8),
        color: Colors.black12,
        isImage: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order ID : $orderId!', style: largeText),
            Text(
                snapshot.data!.orders![index].orderdetails![0].createdAt!
                    .split('T')
                    .first,
                style: normalText),
            Text('Delivery Address : ', style: normalColorText),
            Text(
                '${address.cname!},\n${address.address1!} ${address.landmark}, ${address.city!},\n${address.state}, India\nPin Code : ${address.pincode}\nMobile No : ${address.mobile}',
                style: normalText),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: snapshot.data!.orders![index].orderdetails!.length,
              itemBuilder: (context, ind) =>
                  ordersItemCard(snapshot, ind, size),
            )
          ],
        ),
      ),
    );
  }

  ordersItemCard(AsyncSnapshot<ShowOrderModel> snapshot, int ind, Size size) {
    final item = snapshot.data!.orders![index].orderdetails![ind];
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: RoundedContainer(
        padding: const EdgeInsets.all(8),
        isImage: false,
        color: Colors.white,
        child: Row(
          children: [
            RoundedContainer(
              height: 150,
              width: size.width * 0.3,
              isImage: true,
              networkImg: '$imgPath/products/${item.image}',
            ),
            const SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width / 2,
                  child: Text(
                    item.productname!.toUpperCase(),
                    style: normalText,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text('Gold Purity : ${item.goldPurity ?? '22kt'}',
                    style: normalText),
                Text('Bangle Size : ${item.bangleSize ?? 2 - 8}',
                    style: normalText),
                Text('Weight : ${item.weight}g', style: normalText),
                Text('Status : ${item.activeStatus}', style: normalColorText),
                const SizedBox(height: 2),
                RoundedContainer(
                  isImage: false,
                  color: Colors.black12,
                  padding: const EdgeInsets.symmetric(
                      vertical: 8 * 0.5, horizontal: 8),
                  child: Text('Quantity : ${item.quantity}'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
