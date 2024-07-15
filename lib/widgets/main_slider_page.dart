import 'package:brij_jeweller/widgets/small_text.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'big_text.dart';
import 'icon_and_text.dart';

class MainSliderBar extends StatelessWidget {
  const MainSliderBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageName = [
      'assets/jw10.jpeg',
      'assets/jw11.jpeg',
      'assets/jw12.jpeg'
    ];
    return SizedBox(
      height: 320,
      child: ListView.builder(
        itemCount: imageName.length,
        itemBuilder: (context, position) => GestureDetector(
          child: Stack(
            children: [
              Container(
                height: 220,
                margin: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(imageName[position].toString()),
                        fit: BoxFit.cover)),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 120,
                  margin: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xFFe8e8e8),
                            blurRadius: 5.0,
                            offset: Offset(0, 5)),
                        BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                        BoxShadow(color: Colors.white, offset: Offset(-5, 0))
                      ]),
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: "India Side"),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Wrap(
                                children: List.generate(
                                    5,
                                    (index) => const Icon(
                                          Icons.star,
                                          color: AppColors.mainColor,
                                          size: 15,
                                        ))),
                            const SizedBox(
                              width: 10,
                            ),
                            SmallText(text: "4.5"),
                            const SizedBox(
                              width: 10,
                            ),
                            SmallText(text: "1247"),
                            const SizedBox(
                              width: 10,
                            ),
                            SmallText(text: "Coments"),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconAndTex(
                                icon: Icons.circle_sharp,
                                text: "Normal",
                                iconColor: AppColors.iconColor1),
                            IconAndTex(
                                icon: Icons.location_on,
                                text: "Location",
                                iconColor: AppColors.mainColor),
                            IconAndTex(
                                icon: Icons.access_time_rounded,
                                text: "Time",
                                iconColor: AppColors.iconColor2)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
