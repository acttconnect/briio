import 'package:flutter/material.dart';
import '../home/home.dart';

class WhyBriio extends StatelessWidget {
  const WhyBriio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text('Why BRIIO'),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
      ),
      body: const Column(
        children: [
          SizedBox(height: 5),
          WhyBrllo(
            text: '100% Certified Jewellery',
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-Nc0UXZd5WM0WrEi4YX7kH5LwUhYg9l1ey3Ra67o&s',
          ),
          WhyBrllo(
            text: 'Value for Money',
            image:
                'https://www.shutterstock.com/image-vector/pay-vector-thin-line-icon-260nw-1799803231.jpg',
          ),
          WhyBrllo(
            text: "Easily Exchange within 24 hours",
            image:
                'https://st2.depositphotos.com/13981182/50896/v/600/depositphotos_508968392-stock-illustration-rupees-chargeback-vector-icon-simple.jpg',
          ),
          WhyBrllo(
            text: 'Free Shipping & Insurance',
            image:
                'https://www.shutterstock.com/image-vector/shipping-free-delivery-van-icon-260nw-1253868556.jpg',
          ),
          WhyBrllo(
              text: 'Explore 1000+ designs on your finger tips',
              image: 'https://static.thenounproject.com/png/1306779-200.png'),
        ],
      ),
    );
  }
}
