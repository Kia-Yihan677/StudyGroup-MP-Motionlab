import 'package:get/get.dart';

class CartController extends GetxController {
  final RxInt miQuantity = 0.obs;
  final RxInt shirtQuantity = 0.obs;

  void miQuantityIncrement() => miQuantity.value++;
  void miQuantityDecrement() {
    if (miQuantity.value > 0) miQuantity.value--;
  }

  void shirtQuantityIncrement() => shirtQuantity.value++;
  void shirtQuantityDecrement() {
    if (shirtQuantity.value > 0) shirtQuantity.value--;
  }
}
