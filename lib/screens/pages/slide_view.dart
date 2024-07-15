import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../model/sliders_model.dart';
import '../../utils/const.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  Future<SlidersModel> getSlider() async {
    final response =
        await http.post(Uri.parse("${apiUrl}Sliders"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return SlidersModel.fromJson(data);
    } else {
      return SlidersModel.fromJson(data);
    }
  }

  PageController pageController = PageController(viewportFraction: 1.0);
  var _currentPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = 220;
  List<String> imageName = [
    'assets/jw7.jpeg',
    'assets/jw8.jpeg',
    'assets/jw9.jpeg'
  ];

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<SlidersModel>(
            future: getSlider(),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? SizedBox(
                      height: 240,
                      child: PageView.builder(
                          controller: pageController,
                          itemCount: snapshot.data!.data!.length,
                          itemBuilder: (context, position) {
                            return _buildPageItem(position, snapshot);
                          }))
                  : Container();
            })
        // Container(
        //   height: 320,
        //   child: ,
        // )
        // // DotsIndicator(
        //   dotsCount: 5,
        //   position: _currentPageValue,
        //   decorator: DotsDecorator(
        //     size: Size.square(9.0),
        //     activeSize: Size(18.0,9.0),
        //     // activeShapes: RoundedRectangleBorder(
        //     //   borderRadius: BorderRadius.circular(30)
        //     // )
        //   ),
        // )
      ],
    );
  }

  Widget _buildPageItem(int index, snapshot) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220,
            margin: const EdgeInsets.only(left: 3, right: 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.white,
                // color: index.isEven
                //     ? const Color(0xFF69c5df)
                //     : const Color(0xFF9294cc),
                // image
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "${imgPath}homesliders/${snapshot.data!.data[index].image.toString()}"))),
          ),
          //card image
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     height: 120,
          //     margin:  EdgeInsets.only(left: 20, right: 20, bottom: 5),
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20), color: Colors.white,
          //         boxShadow: const [
          //           BoxShadow(color:  Color(0xFFe8e8e8),
          //               blurRadius: 5.0,
          //               offset:  Offset(0,5)),
          //           BoxShadow(
          //               color: Colors.white,
          //               offset: Offset(-5,0)
          //           ),
          //           BoxShadow(
          //               color: Colors.white,
          //               offset: Offset(-5,0)
          //           )
          //         ]
          //     ),
          //
          //     child: Container(
          //       padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           BigText(text: "India Side"),
          //           const SizedBox(
          //             height: 10,
          //           ),
          //           Row(
          //             children: [
          //               Wrap(
          //                   children: List.generate(
          //                       5,
          //                           (index) =>const  Icon(
          //                         Icons.star,
          //                         color: AppColors.mainColor,
          //                         size: 15,
          //                       ))),
          //               const SizedBox(
          //                 width: 10,
          //               ),
          //               SmallText(text: "4.5"),
          //               const SizedBox(
          //                 width: 10,
          //               ),
          //               SmallText(text: "1247"),
          //               const SizedBox(
          //                 width: 10,
          //               ),
          //               SmallText(text: "Coments"),
          //             ],
          //           ),
          //           const SizedBox(
          //             height: 20,
          //           ),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               IconAndTex(
          //                   icon: Icons.circle_sharp,
          //                   text: "Normal",
          //                   iconColor: AppColors.iconColor1),
          //               IconAndTex(
          //                   icon: Icons.location_on,
          //                   text: "Location",
          //                   iconColor: AppColors.mainColor),
          //               IconAndTex(
          //                   icon: Icons.access_time_rounded,
          //                   text: "Time",
          //                   iconColor: AppColors.iconColor2)
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
