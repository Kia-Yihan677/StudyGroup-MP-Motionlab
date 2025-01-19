import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/controller/cart_controller.dart';

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
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Menambahkan SizedBox untuk memberi jarak antara AppBar dan konten
            const SizedBox(height: 20), // Bisa sesuaikan ukuran jaraknya

            // Card pertama
            Card(
              child: Container(
                height: 115,
                width: 366,
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/jam1.png",
                      height: 96.58,
                      width: 92,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Mi Band 8 Pro - Brand New",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "\$54.00",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff00623B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff00623B),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: cartController.miQuantityDecrement,
                              icon: const Icon(Icons.remove),
                              color: const Color(0xff00623B),
                              iconSize: 16,
                            ),
                            Obx(() => Text(
                                  "${cartController.miQuantity.value}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff00623B),
                                  ),
                                )),
                            IconButton(
                              onPressed: cartController.miQuantityIncrement,
                              icon: const Icon(Icons.add),
                              color: const Color(0xff00623B),
                              iconSize: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/bajuu.png",
                      height: 96.58,
                      width: 92,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Lycra Men's shirt",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "\$12.00",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff00623B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff00623B),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: cartController.shirtQuantityDecrement,
                              icon: const Icon(Icons.remove),
                              color: const Color(0xff00623B),
                              iconSize: 16,
                            ),
                            Obx(() => Text(
                                  "${cartController.shirtQuantity.value}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff00623B),
                                  ),
                                )),
                            IconButton(
                              onPressed: cartController.shirtQuantityIncrement,
                              icon: const Icon(Icons.add),
                              color: const Color(0xff00623B),
                              iconSize: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
