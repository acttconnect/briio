// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../classes/whatsaap.dart';

class ProductCard extends StatelessWidget {
  final String? image;
  const ProductCard({Key? key, this.image}) : super(key: key);

  get margin => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset.zero,
            blurRadius: 15.0,
          )
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    // Get.to(()=>ProductDetailsPages());
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 5),
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.bottomCenter,
                        image: AssetImage(
                          '$image',
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                if (0 != null)
                  Positioned(
                    top: 16,
                    right: 16,
                    child: Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('HBN-5',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        height: 1.5,
                      ),
                    )),
                // Wrap(
                //   spacing: 3,
                //   crossAxisAlignment: WrapCrossAlignment.center,
                //   children: [
                //     Text(
                //       '\$40',
                //       style: TextStyle(
                //         fontSize: 18,
                //         color: Colors.black54,
                //         height: 1.5,
                //       ),
                //     ),
                //     if (1 != null)
                //       Text(
                //         '\$100',
                //         style: TextStyle(
                //           fontSize: 12,
                //           height: 1.5,
                //           decoration: TextDecoration.lineThrough,
                //           color: Colors.black38,
                //         ),
                //       )
                //   ],
                // ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Gross Wt ', style: TextStyle(fontSize: 12)),
                          Text('Stone %', style: TextStyle(fontSize: 12)),
                          Text('Net Wt', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('  :  '),
                          Text('  :  '),
                          Text('  :  '),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '44.269 ',
                            style: TextStyle(fontSize: 12),
                          ),
                          Text('0.00', style: TextStyle(fontSize: 12)),
                          Text('44.269 ', style: TextStyle(fontSize: 12)),
                        ],
                      )
                    ],
                  ),
                ),
                // Row(
                //   children: [
                //     Expanded(child:Container(
                //       margin: const EdgeInsets.only(left: 10,top: 5,bottom: 5),
                //       height: 25,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(7),
                //           color: Colors.black12
                //       ),
                //       child: Container(
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(7),
                //             color: Colors.white
                //         ),
                //         margin: const EdgeInsets.all(1),
                //       ),
                //     )),
                //     Expanded(child:Container(
                //         margin: const EdgeInsets.symmetric(horizontal: 10),
                //         height: 25,
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(7),
                //             color: Colors.black12
                //         ),
                //         child: Row(
                //           children: [
                //             Expanded(child: Container(
                //               height: 24,
                //               decoration: const BoxDecoration(
                //                   borderRadius: BorderRadius.only(bottomLeft:Radius.circular(7),topLeft: Radius.circular(7)),
                //                   color: Colors.white
                //               ),
                //               child: const Icon(Icons.remove),
                //               margin: const EdgeInsets.all(1),
                //             ),),
                //             Expanded(child: Container(
                //               height: 24,
                //               decoration:const  BoxDecoration(
                //                   borderRadius: BorderRadius.only(bottomRight:Radius.circular(7),topRight: Radius.circular(7)),
                //                   color: Colors.white
                //               ),
                //               margin: const EdgeInsets.all(1),
                //               child: const Icon(Icons.add,),
                //             ),),
                //           ],
                //         )
                //     )),
                //   ],
                // ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: const BoxDecoration(color: Colors.black38),
                        height: 25,
                        child: Center(
                            child: Text(
                          'ADD TO CART',
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                          ),
                        )),
                      )),
                      const SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                          onTap: () {
                            WhatsappUrl.lauchWhatsapp(
                                number: 7033443759, message: 'hii');
                          },
                          child: const Icon(FontAwesomeIcons.whatsapp))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
