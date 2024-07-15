// ignore_for_file: library_private_types_in_public_api

import 'package:brij_jeweller/screens/pages/image_picker.dart';
import 'package:brij_jeweller/screens/pages/notifiction_page.dart';
import 'package:brij_jeweller/screens/pages/person_profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../classes/whatsaap.dart';
import '../screens/home/home.dart';
import '../screens/pages/wishlist_page.dart';
import '../utils/colors.dart';

class HomePage5 extends StatefulWidget {
  const HomePage5({Key? key}) : super(key: key);
  @override
  _HomePage5State createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {
  int pageIndex = 0;
  final pages = [
    const HomePage(),
    const UploadImageD(),
    const NotificationPage(),
    const WishlistPage(),
    const PersonProfile(),
  ];
  List name = ['Home', 'Custom Order', 'Notification', 'Watchlist', 'Profile'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {
          WhatsappUrl.lauchWhatsapp(
              number: 7021251102, message: 'Type your query...');
        },
        child: Image.asset('assets/wapp.png'),
        // child: const Icon(
        //   FontAwesomeIcons.whatsapp,
        // ),
      ),
      backgroundColor: const Color(0xffC4DFCB),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              child: pageIndex == 0
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.home_filled,
                          color: AppColors.logo2,
                          size: 28,
                        ),
                        Text(name[pageIndex],
                            style: const TextStyle(
                              color: AppColors.logo2,
                            ))
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.home_outlined,
                          color: AppColors.logo,
                          size: 25,
                        ),
                        Text(name[0],
                            style: const TextStyle(
                              color: AppColors.logo,
                              fontSize: 10,
                            ))
                      ],
                    )),
          GestureDetector(
              //enableFeedback: false,
              onTap: () {
                setState(() {
                  //Globalvariable.colors=AppColors.backGroundColor5;
                  pageIndex = 2;
                });
              },
              child: pageIndex == 2
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.notifications,
                          color: AppColors.logo2,
                          size: 25,
                        ),
                        Text(name[pageIndex],
                            style: const TextStyle(
                              color: AppColors.logo2,
                            ))
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.notifications,
                          color: AppColors.logo,
                          size: 25,
                        ),
                        Text(
                          name[2],
                          style: const TextStyle(
                            color: AppColors.logo,
                            fontSize: 10,
                          ),
                        )
                      ],
                    )),
          GestureDetector(
              // enableFeedback: false,
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              child: pageIndex == 1
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.camera_alt,
                          color: AppColors.logo2,
                          size: 25,
                        ),
                        Text(name[pageIndex],
                            style: const TextStyle(
                              color: AppColors.logo2,
                            ))
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.grey,
                          size: 25,
                        ),
                        Text(name[1],
                            style: const TextStyle(
                              color: AppColors.logo,
                              fontSize: 10,
                            )),
                      ],
                    )),
          GestureDetector(
              //enableFeedback: false,
              onTap: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              child: pageIndex == 3
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.favorite,
                          color: AppColors.logo2,
                          size: 25,
                        ),
                        Text(name[pageIndex],
                            style: const TextStyle(
                              color: AppColors.logo2,
                            ))
                      ],
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.favorite_border,
                          color: AppColors.logo,
                          size: 25,
                        ),
                        Text(name[3],
                            style: const TextStyle(
                              color: AppColors.logo,
                              fontSize: 10,

                            ))
                      ],
                    )),
          GestureDetector(
            //enableFeedback: false,
            onTap: () {
              setState(() {
                pageIndex = 4;
              });
            },
            child: pageIndex == 4
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.person,
                        color: AppColors.logo2,
                        size: 25,
                      ),
                      Text(name[pageIndex],
                          style: const TextStyle(
                            color: AppColors.logo2,
                          ))
                    ],
                  )
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.person_outline,
                        color: AppColors.logo,
                        size: 25,
                      ),
                      Text(
                        name[4],
                        style: const TextStyle(
                          color: AppColors.logo,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
