import 'dart:async';
import 'package:flutter/material.dart';
import '../../controller/profile_utils.dart';
import '../../utils/globel_veriable.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isSelected = false;

  naviagateToHome() async {
    await Future.delayed(
      const Duration(milliseconds: 2000),
      () {
        ProfileUtils().getLogin(GlobalK.mail!, GlobalK.pass!);
      },
    );
  }

  @override
  void initState() {
    naviagateToHome();
    Future.delayed(const Duration(milliseconds: 200),
        () => setState(() => isSelected = true));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => setState(() => isSelected = !isSelected),
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            height: isSelected ? 110 : 50,
            width: isSelected ? 280 : 50,
            curve: Curves.easeOutCirc,
            child: Image.asset('assets/blg.png'),
          ),
        ),
      ),
    );
  }
}
