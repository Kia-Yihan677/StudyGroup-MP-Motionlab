import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/controller/cart_controller.dart';
import 'package:flutter_application_2/widgets/cart_item_widget.dart';
import 'package:flutter_application_2/models/product.dart';
import 'package:flutter_application_2/pages/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart", textAlign: TextAlign.center),
      ),
      body: ListView(
        children: [
          CartItemWidget(
            product: Product(
              name: "Mi Band 8 Pro",
              price: 54.00,
              image: "assets/images/jam1.png",
              quantity: 0,
            ),
            quantity: cartController.miQuantity,
            onIncrement: cartController.miQuantityIncrement,
            onDecrement: cartController.miQuantityDecrement,
          ),
          const SizedBox(height: 10),
          CartItemWidget(
            product: Product(
              name: "Lycra Men's shirt",
              price: 12.00,
              image: "assets/images/bajuu.png",
              quantity: 0,
            ),
            quantity: cartController.shirtQuantity,
            onIncrement: cartController.shirtQuantityIncrement,
            onDecrement: cartController.shirtQuantityDecrement,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => const PaymentPage());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff00623B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: const Size(381, 55),
          ),
          child: const Text(
            "Buy Now",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
