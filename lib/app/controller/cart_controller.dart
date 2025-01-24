import 'package:get/get.dart';

class CartController extends GetxController {
  var miQuantity = 0.obs;
  var shirtQuantity = 0.obs;

  void miQuantityIncrement() => miQuantity++;
  void miQuantityDecrement() {
    if (miQuantity > 0) miQuantity--;
  }

  void shirtQuantityIncrement() => shirtQuantity++;
  void shirtQuantityDecrement() {
    if (shirtQuantity > 0) shirtQuantity--;
  }
}
