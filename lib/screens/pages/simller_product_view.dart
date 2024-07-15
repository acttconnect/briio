import 'package:brij_jeweller/utils/colors.dart';
import 'package:brij_jeweller/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class SimllerProductView extends StatefulWidget {
  const SimllerProductView({Key? key}) : super(key: key);

  @override
  State<SimllerProductView> createState() => _SimllerProductViewState();
}

class _SimllerProductViewState extends State<SimllerProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.mainBlackColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Center(
        child: Icon(
          Icons.block_rounded,
          size: 100,
          color: AppColors.mainColor,
        ),
      ),
      bottomNavigationBar: const BottomBars(),
    );
  }
}
