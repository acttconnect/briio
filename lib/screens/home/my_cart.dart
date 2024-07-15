import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../model/add_card_model.dart';
import '../../utils/const.dart';
import '../../utils/globel_veriable.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Data>? _cartItems;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _fetchCartItems();
  }

  Future<List<Data>?> getCard() async {
    try {
      var request = http.Request('GET',
          Uri.parse('https://briio.in/api/getCart?userid=${GlobalK.userId}'));
      http.StreamedResponse response = await request.send();
      if (response.statusCode == 200) {
        final rawData = await response.stream.bytesToString();
        final jsonData = jsonDecode(rawData);
        final List jsonCart = jsonData['data'] ?? [];
        final result = jsonCart.map(Data.fromJson).toList();
        return result;
      } else {
        throw "An error occurred: ${response.reasonPhrase}";
      }
    } catch (e) {
      throw "An error occurred: $e";
    }
  }

  Future<void> _fetchCartItems() async {
    try {
      final fetchedItems = await getCard(); // Fetch cart data
      setState(() {
        _cartItems = fetchedItems;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = "Error: $e";
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (_errorMessage != null) {
      return Center(child: Text(_errorMessage!));
    } else if (_cartItems != null && _cartItems!.isNotEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
        ),
        body: ListView.builder(
          itemCount: _cartItems!.length,
          itemBuilder: (context, index) {
            final item = _cartItems![index];
            return Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center, // Align to top
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "${imgPath}products/${item.products?.image}",
                        fit: BoxFit.cover,
                        height: 120,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.products?.name ?? 'Product Name Unavailable',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Quantity: ${item.quantity ?? 1}'),
                          Text('Product ID: ${item.products?.id ?? 'N/A'}'),
                          Text('${item.products?.description ?? 'N/A'}'),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () async {
                      final response = await http.post(
                        Uri.parse(
                          '${apiUrl}deleteCart?userid=${GlobalK.userId}&productid=${item.products?.id}',
                        ),
                      );
                      if (response.statusCode == 200) {
                        setState(() {
                          _cartItems?.removeAt(index);
                        });
                      } else {
                        // Handle errors if the item couldn't be deleted
                        print("Error deleting item: ${response.statusCode}");
                      }
                    },
                  ),
                ],
              ),
            );
          },
        ),
      );
    } else {
      return Center(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 350,
                width: double.infinity,
                child: Image.asset(
                  'assets/empty.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                'Your cart is empty',
                style: TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
