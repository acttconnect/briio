import 'package:brij_jeweller/model/home_model.dart';
import 'package:brij_jeweller/screens/pages/categories/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/const.dart';
import '../../../utils/globel_veriable.dart';
import '../../home/api_services.dart';

class SubCategory extends StatefulWidget {
  const SubCategory({super.key, required this.categoryId});

  final int categoryId;

  @override
  State<SubCategory> createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  List<SubCategories> subCategory = [];

  bool isReady = false;

  _getSubCategory() async {
    isReady = true;
    final result = await ApiServices().getSubCategory(widget.categoryId);
    setState(() {
      subCategory = result;
      isReady = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getSubCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Sub Categories"),
      ),
      body: isReady == true
          ? const Center(child: CircularProgressIndicator())
          : subCategory.isEmpty || subCategory == null
              ? const Center(child: Text("No subcategories found."))
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: subCategory.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          GlobalK.categoryId = widget.categoryId.toString();
                        });
                        Get.to(
                          () => ProductScreen(
                            subcategoryId: subCategory[index].id!,
                          ),
                        );
                      },
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.network(
                              "${imgPath}subcategory/${subCategory[index].image}",
                              height: 170,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blueGrey[50],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                  subCategory[index].subcategory.toString()),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}
