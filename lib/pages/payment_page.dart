import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:flutter_application_2/pages/home_page.dart';

class PaymentProduct {
  final String name;
  final String email;
  final double price;

  PaymentProduct({
    required this.name,
    required this.email,
    required this.price,
  });
}

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final product = PaymentProduct(
      name: 'Indra Mahesa',
      email: 'indramahesa@gmail.com',
      price: 66.00,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Invoice',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Lottie.asset(
                    'assets/lottie/lottie_check.json',
                    height: 90,
                    width: 90,
                    repeat: false,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Transaction Success",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "\$66.00",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 17),
                  const Divider(
                    thickness: 0,
                    color: Color(0xff707070),
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(height: 17),
                  const DetailRow(
                    label: "Invoice Number",
                    value: "000085752257",
                  ),
                  const SizedBox(height: 20),
                  const DetailRow(
                    label: "Transaction Date",
                    value: "16 June 2023",
                  ),
                  const SizedBox(height: 20),
                  const DetailRow(
                    label: "Payment Method",
                    value: "Bank Transfer",
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 17),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Detail Pesanan",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 17),
                  DetailRow(
                    label: "Order Name",
                    value: product.name,
                  ),
                  const SizedBox(height: 20),
                  DetailRow(
                    label: "Order Email",
                    value: product.email,
                  ),
                  const SizedBox(height: 20),
                  DetailRow(
                    label: "Total Price",
                    value: "\$${product.price}",
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => const HomePage());
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff00623B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: const Size(381, 55),
          ),
          child: const Text(
            "Back to Home",
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

class DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const DetailRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xff707070),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
