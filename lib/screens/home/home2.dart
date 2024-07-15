// ignore_for_file: prefer_typing_uninitialized_variables, unnecessary_null_comparison

import 'dart:convert';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import '../../classes/whatsaap.dart';
import '../../model/new_home_data_model.dart';
import '../../utils/const.dart';
import '../../utils/globel_veriable.dart';
import '../pages/categories/categorybyproductpage.dart';

class Home2Page extends StatefulWidget {
  const Home2Page({Key? key}) : super(key: key);

  @override
  State<Home2Page> createState() => _Home2PageState();
}

class _Home2PageState extends State<Home2Page> {
  Future<NewHomeDataModel> getData() async {
    String? uri = '${apiUrl}HomeData';
    var response = await http.post(Uri.parse(uri));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return NewHomeDataModel.fromJson(data);
    }
    return NewHomeDataModel.fromJson(data);
  }


  @override
  Widget build(BuildContext context) {
    var margin;
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<NewHomeDataModel>(
        future: getData(),
        builder: (context, snapshot) => SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 181,
                child: ListView(
                  children: [
                    CarouselSlider.builder(
                      itemCount: snapshot.data!.slider!.length,
                      itemBuilder: (context, index, realIndex) => Container(
                        margin: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(
                                "${imgPath}homesliders/${snapshot.data!.slider![index].image.toString()}"),
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
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                height: 650,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15, bottom: 10),
                      child: Text('Categories',
                          style: GoogleFonts.lato(
                              height: 2,
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800)),
                    ),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 250,
                                  childAspectRatio: 5 / 4,
                                  crossAxisSpacing: 3,
                                  mainAxisSpacing: 4),
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: snapshot.data!.categorie!.length,
                          itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  //GlobalK.categoryId='${snapshot.data!.data![index].id!.toString()}';
                                  setState(() {
                                    GlobalK.categoryId = snapshot
                                        .data!.categorie![index].id!
                                        .toString();
                                  });
                                  Get.to(() => const CategoryByProduct());
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://media.istockphoto.com/photos/abstract-luxurious-polygonal-black-background-with-gold-accents-frame-picture-id1249749650?k=20&m=1249749650&s=612x612&w=0&h=MeWbmWK7JEBvR3OGLxplDSMppTF3iUCAGdP4rsgStwM='),
                                          fit: BoxFit.cover)),

                                  // margin: EdgeInsets.only(left: 5,right: 5),
                                  // color: Colors.black12,
                                  //color: Colors.white,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        margin: const EdgeInsets.only(left: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              snapshot
                                                  .data!.categorie![index].name!
                                                  .toString()
                                                  .toUpperCase(),
                                              style: GoogleFonts.cabin(
                                                  textStyle: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20)),
                                            ),
                                            Text(
                                              'Available',
                                              style: GoogleFonts.lato(
                                                  textStyle: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 13,
                                                      height: 2)),
                                            ),
                                            Text(
                                              snapshot.data!.categorie![index]
                                                  .subtitle!
                                                  .toString(),
                                              style: GoogleFonts.cabin(
                                                  textStyle: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 12)),
                                            )
                                          ],
                                        ),
                                      )),
                                      //SizedBox(width: 10,),
                                      Expanded(
                                        flex: 1,
                                        child: Image.network(
                                            '${imgPath}category/${snapshot.data!.categorie![index].image!.toString()}'),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    margin: const EdgeInsets.only(top: 15, bottom: 10),
                    child: Text('Best Sellers',
                        style: GoogleFonts.lato(
                            height: 2,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800)),
                  ),
                  SizedBox(
                    height: 210,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 4 / 4,
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 10),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        // physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Container(
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
                                            margin:
                                                const EdgeInsets.only(top: 5),
                                            height: 180,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                image: NetworkImage(
                                                  '${imgPath}products/${snapshot.data!.bestseller![index].image!.toString()}',
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text('HBN-5',
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                height: 1.5,
                                              ),
                                            )),
                                        Container(
                                          margin: const EdgeInsets.only(top: 5),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text('Gross Wt ',
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                                  Text('Stone %',
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                                  Text('Net Wt',
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                                ],
                                              ),
                                              const Column(
                                                children: [
                                                  Text('  :  '),
                                                  Text('  :  '),
                                                  Text('  :  '),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    snapshot.data!
                                                        .bestseller![index].gw!
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      snapshot
                                                          .data!
                                                          .bestseller![index]
                                                          .stone!
                                                          .toString(),
                                                      style: const TextStyle(
                                                          fontSize: 12)),
                                                  Text(
                                                      '${snapshot.data!.bestseller![index].nw!.toString()} ',
                                                      style: const TextStyle(
                                                          fontSize: 12)),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 5),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Container(
                                                decoration: const BoxDecoration(
                                                    color: Colors.black38),
                                                height: 25,
                                                child: Center(
                                                    child: Text(
                                                  'ADD TO CART',
                                                  style: GoogleFonts.lato(
                                                    textStyle: const TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                )),
                                              )),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              GestureDetector(
                                                  onTap: () {
                                                    WhatsappUrl.lauchWhatsapp(
                                                        number: 7033443759,
                                                        message: 'hii');
                                                  },
                                                  child: const Icon(
                                                      FontAwesomeIcons
                                                          .whatsapp))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                  ),
                ],
              ),
              SizedBox(
                height: 180,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  'https://static.vecteezy.com/system/resources/previews/003/982/662/original/sale-banner-with-golden-gift-box-and-percentage-sign-retro-board-broadway-illustration-special-offer-discount-on-white-and-blue-background-vector.jpg'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.blue,
                          ),
                          margin: const EdgeInsets.all(10),
                          // height: 30,
                          width: 300,
                        )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 15),
                    margin: const EdgeInsets.only(top: 15, bottom: 10),
                    child: Text('Featured Products',
                        style: GoogleFonts.lato(
                            height: 2,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800)),
                  ),
                  SizedBox(
                    height: 460,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 4 / 4.5,
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 10),
                        itemCount: 4,
                        physics: const ScrollPhysics(),
                        itemBuilder: (context, index) => Container(
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
                                            margin:
                                                const EdgeInsets.only(top: 5),
                                            height: 180,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                image: NetworkImage(
                                                  '${imgPath}products/${snapshot.data!.bestseller![index].image!.toString()}',
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                            snapshot.data!.feature![index].name!
                                                .toString(),
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                height: 1.5,
                                              ),
                                            )),
                                        Container(
                                          margin: const EdgeInsets.only(top: 5),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text('Gross Wt ',
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                                  Text('Stone %',
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                                  Text('Net Wt',
                                                      style: TextStyle(
                                                          fontSize: 12)),
                                                ],
                                              ),
                                              const Column(
                                                children: [
                                                  Text('  :  '),
                                                  Text('  :  '),
                                                  Text('  :  '),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    snapshot.data!
                                                        .feature![index].gw!
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                      snapshot
                                                          .data!
                                                          .feature![index]
                                                          .stone!
                                                          .toString(),
                                                      style: const TextStyle(
                                                          fontSize: 12)),
                                                  Text(
                                                      '${snapshot.data!.feature![index].nw!.toString()} ',
                                                      style: const TextStyle(
                                                          fontSize: 12)),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 5),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Container(
                                                decoration: const BoxDecoration(
                                                    color: Colors.black38),
                                                height: 25,
                                                child: Center(
                                                    child: Text(
                                                  'ADD TO CART',
                                                  style: GoogleFonts.lato(
                                                    textStyle: const TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                )),
                                              )),
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              GestureDetector(
                                                  onTap: () {
                                                    WhatsappUrl.lauchWhatsapp(
                                                        number: 7033443759,
                                                        message: 'hii');
                                                  },
                                                  child: const Icon(
                                                      FontAwesomeIcons
                                                          .whatsapp))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                  ),
                ],
              ),
              Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 15),
                        margin: const EdgeInsets.only(top: 15, bottom: 10),
                        child: Text('Following Us',
                            style: GoogleFonts.lato(
                                height: 2,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w800)),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 25, top: 15, bottom: 20),
                        color: Colors.white,
                        width: double.maxFinite,
                        child: Wrap(
                          runSpacing: 20,
                          spacing: 50,
                          children: [
                            //Image.network('https://icons-for-free.com/iconfiles/png/128/google+googleplus+media+network+social+icon-1320192472148074586.png',height: 60,),
                            Image.network(
                              'https://icons-for-free.com/iconfiles/png/128/facebook+media+network+social+web+icon-1320192471207151386.png',
                              height: 60,
                            ),
                            //Image.network('https://icons-for-free.com/iconfiles/png/128/network+social+tweet+twitter+web+icon-1320192471838669622.png',height: 60,),
                            Image.network(
                              'https://icons-for-free.com/iconfiles/png/128/network+social+video+web+youtube+icon-1320192472030596773.png',
                              height: 60,
                            ),
                            Image.network(
                              'https://icons-for-free.com/iconfiles/png/128/instagram+media+network+photo+picture+social+icon-1320192471002415743.png',
                              height: 60,
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 15,
                      bottom: 8,
                    ),
                    margin: const EdgeInsets.only(top: 15, bottom: 10),
                    color: Colors.white,
                    width: double.maxFinite,
                    child: Text('Evolution of Group',
                        style: GoogleFonts.lato(
                            height: 2,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800)),
                  ),
                  // _obscureText?_evluction():_evluction2(),
                ],
              ),
              Container(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
