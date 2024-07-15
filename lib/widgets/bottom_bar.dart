import 'package:brij_jeweller/classes/whatsaap.dart';
import 'package:brij_jeweller/screens/home/home.dart';
import 'package:brij_jeweller/screens/pages/image_picker.dart';
import 'package:brij_jeweller/screens/pages/notifiction_page.dart';
import 'package:brij_jeweller/screens/pages/person_profile.dart';
import 'package:brij_jeweller/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/pages/wishlist_page.dart';

class BottomBars extends StatefulWidget {
  const BottomBars({Key? key}) : super(key: key);

  @override
  State<BottomBars> createState() => _BottomBarsState();
}

class _BottomBarsState extends State<BottomBars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 98,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Want to view our entire product range?',
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          'Call / WhatsApp us Now!',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {},
                            child: const Icon(Icons.phonelink_ring,
                                size: 24, color: AppColors.logo3)),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            WhatsappUrl.lauchWhatsapp(
                                number: 7033443759, message: 'hii');
                          },
                          child: const Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 24,
                            color: AppColors.logo3,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                icon: const Icon(
                  Icons.home_outlined,
                  size: 28,
                  color: AppColors.logo3,
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationPage()));
                  },
                  icon: const Icon(
                    Icons.notifications_none,
                    size: 28,
                    color: AppColors.logo3,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UploadImageD()));
                  },
                  icon: const Icon(
                    Icons.camera,
                    size: 28,
                    color: AppColors.logo3,
                  )),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PersonProfile()));
                  },
                  icon: const Icon(
                    Icons.person_outline,
                    size: 28,
                    color: AppColors.logo3,
                  )),
              IconButton(
                onPressed: () {
                  Get.to(() => const WishlistPage());
                },
                icon: const Icon(
                  Icons.favorite,
                  color: AppColors.logo3,
                  size: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
