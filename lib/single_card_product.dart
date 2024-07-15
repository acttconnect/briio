
// class SingleProductCard extends StatelessWidget {
//   final String image;
//   final String text;
//   final Color bgColor;
//   double height;
//   double width;
//
//   SingleProductCard(
//       {Key? key,
//       this.image = '',
//       this.text = '',
//        this.height = 183,
//        this.width = 155,
//       this.bgColor = AppColors.signColor})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Container(
//         color: bgColor,
//         height: height,
//         width: width,
//         child: Column(
//           children: [
//             Expanded(
//                 flex: 3,
//                 child: Image.asset(
//                   image,
//                   fit: BoxFit.cover,
//                 )),
//             Expanded(
//                 child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 BigText(
//                   text: 'Demo',
//                   color: Colors.white70,
//                 ),
//                 PriceText(
//                   text: "Demo",
//                   color: Colors.white70,
//                 )
//               ],
//             ))
//           ],
//         ),
//       ),
//     ));
//   }
// }
