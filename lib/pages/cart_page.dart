import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/cart_controller.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TesPage();
  }
}

class TesPage extends StatelessWidget {
  const TesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "MyCart",
          textAlign: TextAlign.center,
        ),
      ), // Tutup appBar di sini
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              child: Container(
                height: 115,
                width: 366,
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/jam1.png",
                    height: 96.58,
                    width: 92,
                  ),
                  title: const Text("Mi Band 8 Pro - Brand New"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: cartController.miQuantityDecrement,
                        icon: const Icon(Icons.remove),
                      ),
                      Obx(() => Text("${cartController.miQuantity.value}")),
                      IconButton(
                        onPressed: cartController.miQuantityIncrement,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              child: Container(
                height: 115,
                width: 366,
                padding: const EdgeInsets.all(18.0),
                child: ListTile(
                  leading: Image.asset("assets/images/bajuu.png"),
                  title: const Text("Lycra Men's Shirt"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: cartController.shirtQuantityDecrement,
                        icon: const Icon(Icons.remove),
                      ),
                      Obx(() => Text("${cartController.shirtQuantity.value}")),
                      IconButton(
                        onPressed: cartController.shirtQuantityIncrement,
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
