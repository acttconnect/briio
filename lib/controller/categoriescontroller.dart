import 'package:get/get.dart';
import '../utils/remote_service.dart';

class CategoriesController extends GetxController {
  var categoriesItem = <void>[].obs;
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    var products = await RemoteServices.fatchProducts();
    categoriesItem.value = products;
  }
}
