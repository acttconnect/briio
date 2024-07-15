import 'package:brij_jeweller/widgets/buttom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDialogs extends StatelessWidget {
  final String title, description, buttonText;

  const CustomDialogs({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    const double padding = 16.0;
    return WillPopScope(
      child: GestureDetector(
        onTap: () {
          Get.offAll(() => const HomePage5());
        },
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: padding,
                right: padding,
              ),
            
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(padding),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      offset: Offset(0.0, 10.0),
                    )
                  ]),
              child: Column(
                mainAxisSize: MainAxisSize.min, // To make the card compact
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(top: 5),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your Order Is Successful',
                            style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                    color: Colors.indigo,
                                    height: 2,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 3, top: 10),
                    child: Image.asset('assets/order.png'),
                  ),
                  Text('Thank You',
                      style: GoogleFonts.asset(
                          textStyle: const TextStyle(
                              color: Colors.greenAccent,
                              height: 2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold))),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    height: 1,
                    color: Colors.indigo,
                  ),
                  Container(
                    width: double.infinity,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.offAll(const HomePage5());
                      },
                      child: Text(
                        'Continue your shopping',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.blue, fontSize: 18)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      onWillPop: () async {
        Get.to(() => const HomePage5());
        return true;
      },
    );
  }
}
