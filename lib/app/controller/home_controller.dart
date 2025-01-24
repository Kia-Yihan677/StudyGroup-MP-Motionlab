import 'package:get/get.dart';

class HomeController extends GetxController {
  void navigateToCart() {
    Get.toNamed('/cart');
  }

  void navigateToProductPage() {
    Get.toNamed('/product');
  }
}
