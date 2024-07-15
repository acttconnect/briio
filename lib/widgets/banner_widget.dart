// import 'package:brij_jeweller/screens/home/all_products_page.dart';
// import 'package:flutter/material.dart';
// import '../utils/colors.dart';
// import 'big_text.dart';
//
// class BannerCard extends StatelessWidget {
//   final String image;
//   const BannerCard({Key? key, required this.image}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(top: 3, left: 3, bottom: 3, right: 3),
//       margin: const EdgeInsets.only(top: 10, left: 3, bottom: 10),
//       height: 200,
//       width: double.infinity,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(5),
//           boxShadow: const [
//             BoxShadow(
//                 color: Color(0xFFe8e8e8),
//                 blurRadius: 5.0,
//                 offset: Offset(0, 5)),
//             BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
//             BoxShadow(color: Colors.white, offset: Offset(-5, 0))
//           ]),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Expanded(
//               flex: 3,
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: Colors.red,
//                     image: DecorationImage(
//                         image: AssetImage(image), fit: BoxFit.cover)),
//               )),
//           Expanded(
//               child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               BigText(
//                 text: 'Brij-653b',
//                 size: 15,
//               ),
//               MaterialButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const AllProductPage()));
//                 },
//                 color: AppColors.buttonBackGroundColor,
//                 child: BigText(
//                   text: "Explore",
//                   size: 16,
//                 ),
//               )
//             ],
//           ))
//         ],
//       ),
//     );
//   }
// }
