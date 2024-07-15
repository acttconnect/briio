import 'package:flutter/material.dart';

class CustomerSupport extends StatelessWidget {
  const CustomerSupport({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String phoneNo = '+91 7355211629';
    String emailAddress = 'contact@edunear.in';
    final phone = Uri.parse('tel:$phoneNo');
    final email = Uri.parse('mailto:$emailAddress');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Support'),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text('Help Centre', style: TextStyle(color: Colors.blue)),
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text("Talk to our Customer Care Executive",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue)),
              ),
              const SizedBox(height: 10),
              buildCall(size, phone, phoneNo),
              const SizedBox(height: 24),
              const Text(
                  "If you have any questions or concerns about our services, please contact us at",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue)),
              GestureDetector(
               // onTap: () => launchUrl(email),
                child: Text(emailAddress,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.blue)),
              ),
              const SizedBox(height: 24),
              const Text("Thank you for trusting us with your education needs.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue)),
              const Spacer(),
              Image.asset('assets/blg.png', height: 55),
              const Text('App Version : 1.0.1',
                  style: TextStyle(color: Colors.blue)),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCall(Size size, Uri phone, String phoneNo) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.phone),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(phoneNo, style: const TextStyle(color: Colors.blue)),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () async {
              //await launchUrl(phone);
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(7),
              ),
              child: const Text(
                "CALL US",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
