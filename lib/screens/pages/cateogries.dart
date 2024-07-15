import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../model/catogries_model.dart';
import '../../utils/const.dart';
import '../../widgets/big_text.dart';
import 'catogriesbyproduct.dart';

class CatogreisPage extends StatefulWidget {
  const CatogreisPage({Key? key}) : super(key: key);

  @override
  State<CatogreisPage> createState() => _CatogreisPageState();
}

Future<CatogriesModel> getPro() async {
  final response =
      await http.post(Uri.parse('${apiUrl}Categorie'));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return CatogriesModel.fromJson(data);
  }
  return CatogriesModel.fromJson(data);
}

class _CatogreisPageState extends State<CatogreisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<CatogriesModel>(
        future: getPro(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? LayoutBuilder(builder: (context, index) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () async {
                        String? name =
                            snapshot.data!.data![index].name!.toString();
                        String? id = snapshot.data!.data![index].id!.toString();
                        await Get.to(() => CatogriesByProduct(
                              catogiresId: id,
                              catoriesName: name,
                            ));
                      },
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(20),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white70,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        '${imgPath}category/${snapshot.data!.data![index].image!.toString()}'))),
                          ),
                          BigText(
                            text: snapshot.data!.data![index].name!.toString(),
                            size: 13,
                          )
                        ],
                      ),
                    ),
                  );
                })
              : Container();
        },
      ),
    );
  }
}
