import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../classes/slider.dart';
import '../../model/sliders_model.dart';
import '../../utils/const.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SlidersModel>(
      future: Sliders.getSlider(),
      builder: (context, snapshot) => snapshot.hasData
          ? ListView(
              children: [
                CarouselSlider.builder(
                  itemCount: snapshot.data!.data!.length,
                  itemBuilder: (context, index, realIndex) => Container(
                    margin: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "${imgPath}homesliders/${snapshot.data!.data![index].image.toString()}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 1,
                  ),
                ),
              ],
            )
          : Container(),
    );
  }
}
