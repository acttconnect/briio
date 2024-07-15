import 'dart:convert';
import 'package:brij_jeweller/utils/cart_order.dart';
import 'package:brij_jeweller/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import '../../model/address_model.dart';
import '../../utils/globel_veriable.dart';

class SavedAddress extends StatefulWidget {
  final bool forOrder;
  final bool? isCartOrder;
  final int? productId;
  final int? cartId;
  final String? goldPurity;
  final String? bangleSize;
  final String? weight;
  const SavedAddress(
      {super.key,
      required this.forOrder,
      this.productId,
      this.goldPurity,
      this.bangleSize,
      this.weight,
      this.isCartOrder,
      this.cartId});

  @override
  State<SavedAddress> createState() => _SavedAddressState();
}

class _SavedAddressState extends State<SavedAddress> {
  final name = TextEditingController();
  final phone = TextEditingController();
  final address = TextEditingController();
  final landmark = TextEditingController();
  final city = TextEditingController();
  final state = TextEditingController();
  final pin = TextEditingController();
  final addKey = GlobalKey<FormState>();
  final c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        automaticallyImplyLeading: false,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: widget.forOrder
            ? const Text('Select Address')
            : const Text('Saved Address'),
      ),
      body: Obx(
        () => c.isCartLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : FutureBuilder<AddressModel>(
                future: showAddress(),
                builder: (context, snapshot) => snapshot.hasData
                    ? snapshot.data!.data!.isEmpty
                        ? Center(
                            child: widget.forOrder
                                ? const Text(
                                    'Please add address to proceed further',
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 16))
                                : const Center(
                                    child: Text('No Address saved yet',
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 16)),
                                  ))
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data!.data!.length,
                            itemBuilder: (context, index) => widget.forOrder
                                ? buildAddressCard1(snapshot, index)
                                : buildAddressCard(snapshot, index))
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
              ),
      ),
      floatingActionButton: widget.forOrder
          ? null
          : FloatingActionButton(
              onPressed: () => addAddressDialog(),
              child: const Icon(Icons.add),
            ),
    );
  }

  addAddressDialog() {
    name.clear();
    phone.clear();
    address.clear();
    landmark.clear();
    city.clear();
    state.clear();
    pin.clear();
    return Get.defaultDialog(
      title: 'Add Address',
      content: Form(
        key: addKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              customTextField(
                controller: name,
                hintText: 'Name',
                iconData: Icons.person,
              ),
              customTextField(
                controller: phone,
                hintText: 'Mobile no.',
                iconData: Icons.phone_android,
                isNumeric: true,
              ),
              customTextField(
                controller: address,
                hintText: 'Address',
                iconData: Icons.private_connectivity,
              ),
              customTextField(
                controller: landmark,
                hintText: 'Landmark',
                iconData: Icons.house,
              ),
              customTextField(
                controller: city,
                hintText: 'City',
                iconData: Icons.location_city,
              ),
              customTextField(
                controller: state,
                hintText: 'State',
                iconData: Icons.real_estate_agent,
              ),
              customTextField(
                controller: pin,
                hintText: 'Pin code',
                iconData: Icons.pin_drop,
                isNumeric: true,
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  final isValid = addKey.currentState!.validate();
                  if (isValid) {
                    saveAddressFromApi(
                      id: GlobalK.userId!.toInt(),
                      name: name.text,
                      mobile: phone.text,
                      address: address.text,
                      landmark: landmark.text,
                      city: city.text,
                      state: state.text,
                      pincode: pin.text,
                    ).then((value) => setState(() {}));
                  }
                },
                child: Text(
                  'Add',
                  style: GoogleFonts.poppins(
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAddressCard(AsyncSnapshot<AddressModel> snapshot, int index) {
    final item = snapshot.data!.data![index];
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item.cname!, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 5),
            Text(
              '${item.landmark!}, ${item.city}',
              style: const TextStyle(fontSize: 16, color: Colors.black45),
            ),
            Text('${item.state!}, India',
                style: const TextStyle(fontSize: 16, color: Colors.black45)),
            Text(item.pincode!.toString(),
                style: const TextStyle(fontSize: 16, color: Colors.black45)),
            const SizedBox(height: 5),
            Text(item.mobile!,
                style: const TextStyle(fontSize: 13, color: Colors.black)),
            const SizedBox(height: 5),
            const Divider(color: Colors.black12),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: const Size(50, 20),
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () => deleteAddress(item.id!.toInt())
                  .then((value) => setState(() {})),
              child: const Text(
                'Delete',
                style: TextStyle(color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildAddressCard1(AsyncSnapshot<AddressModel> snapshot, int index) {
    final item = snapshot.data!.data![index];
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
      child: GestureDetector(
        onTap: () => widget.isCartOrder ?? false
            ? CartOrder.placeOrder(
                productId: widget.productId!, addressId: item.id!.toInt())
            : submitOrder(
                bangleSize: widget.bangleSize!,
                weight: widget.weight!,
                goldPurity: widget.goldPurity!,
                addressId: item.id!.toInt(),
                productId: widget.productId!),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.cname!, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 5),
              Text(
                '${item.landmark!}, ${item.city}',
                style: const TextStyle(fontSize: 16, color: Colors.black45),
              ),
              Text('${item.state!}, India',
                  style: const TextStyle(fontSize: 16, color: Colors.black45)),
              Text(item.pincode!.toString(),
                  style: const TextStyle(fontSize: 16, color: Colors.black45)),
              const SizedBox(height: 5),
              Text(item.mobile!,
                  style: const TextStyle(fontSize: 13, color: Colors.black)),
              const SizedBox(height: 5),
              const Divider(color: Colors.black12),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> submitOrder(
      {required String bangleSize,
      required String weight,
      required String goldPurity,
      required int addressId,
      required int productId}) async {
    final url =
        '${apiUrl}submitOrderData?bangle_size=$bangleSize&weight=$weight&gold_purity=$goldPurity&address_id=$addressId&user_id=${GlobalK.userId}&product_id=$productId';
    c.isCartLoading.value = true;
    final response = await http.post(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['error'] == false) {
        c.isCartLoading.value = false;
        Fluttertoast.showToast(msg: 'Order Placed Successfully');
        Get.back();
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      textAlign: TextAlign.center,
                      'Thank You for choosing \n BRIIO!! \n Your order will be confirmed shortly.',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(), // Close dialog using Navigator
                    child: const Text(
                      'OK',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            );
          },
        );
        // Get.defaultDialog(
        //   // title: '',
        //   middleText: 'Thank You for choosing \n BRIIO!! \n Your order will be confirmed shortly.',
        //   confirm: ElevatedButton(
        //       onPressed: () => Get.back(),
        //       child: const Text(
        //         'OK',
        //         style: TextStyle(color: Colors.black),
        //       )),
        // );
      } else {
        c.isCartLoading.value = false;
        Get.back();
        Fluttertoast.showToast(msg: 'Failed');
      }
    } else {
      c.isCartLoading.value = false;
      Get.back();
      Fluttertoast.showToast(msg: 'Internal server error');
    }
  }

  Future<void> deleteAddress(int addressId) async {
    final url =
        '${apiUrl}deleteAddress?user_id=${GlobalK.userId}&address_id=$addressId';
    final response = await http.post(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['error'] == false) {
        Fluttertoast.showToast(msg: 'Address deleted');
      } else {
        Fluttertoast.showToast(msg: 'Failed');
      }
    } else {
      Fluttertoast.showToast(msg: 'Internal server error');
    }
  }

  Future<AddressModel> showAddress() async {
    final url = '${apiUrl}showAddress?user_id=${GlobalK.userId}';
    final response = await http.post(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['error'] == false) {
        return AddressModel.fromJson(data);
      } else {
        Fluttertoast.showToast(msg: response.reasonPhrase.toString());
      }
    } else {
      Fluttertoast.showToast(msg: 'Internal server error');
    }
    throw Exception('Unable to load data');
  }

  Widget customTextField(
      {required TextEditingController controller,
      required String hintText,
      bool? isNumeric,
      required IconData iconData}) {
    return TextFormField(
      controller: controller,
      keyboardType:
          isNumeric ?? false ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(iconData),
      ),
      validator: (value) => value!.isEmpty ? 'This is required' : null,
    );
  }
}

Future<void> saveAddressFromApi(
    {required int id,
    required String name,
    required String mobile,
    required String address,
    required String landmark,
    required String city,
    required String state,
    required String pincode}) async {
  final url =
      '${apiUrl}addaddress?user_id=$id&mobile=$mobile&landmark=$landmark&city=$city&state=$state&pincode=$pincode&address_1=$address&cname=$name';
  final response = await http.post(Uri.parse(url));
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    if (data['error'] == false) {
      Fluttertoast.showToast(msg: 'Address added');
      Get.back();
    } else {
      Fluttertoast.showToast(msg: 'Failed');
    }
  } else {
    Fluttertoast.showToast(msg: 'Internal server error');
  }
}
