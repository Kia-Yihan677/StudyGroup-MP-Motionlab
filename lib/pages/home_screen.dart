import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Image.asset(
                    'assets/images/group.png',
                    width: 20,
                    height: 15,
                  ),
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: 47,
                  height: 47,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed('/cart');
                    },
                    child: Image.asset(
                      'assets/images/bag.png',
                      width: 23,
                      height: 23,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text.rich(
                  TextSpan(
                    text: 'Our way of loving\n',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: 'you back',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/search.png',
              width: 402,
              height: 73,
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildBubble('All', const Color(0xFF3A5A40), Colors.white),
                  const SizedBox(width: 10),
                  _buildBubble('Watch', const Color(0xFFF2F2F2), Colors.black),
                  const SizedBox(width: 10),
                  _buildBubble('Shirt', const Color(0xFFF2F2F2), Colors.black),
                  const SizedBox(width: 10),
                  _buildBubble('Shoes', const Color(0xFFF2F2F2), Colors.black),
                  const SizedBox(width: 10),
                  _buildBubble(
                      'Electronic', const Color(0xFFF2F2F2), Colors.black),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, top: 20.0),
                child: Text(
                  'Our Best Seller',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/jam.png',
                  width: 177.89,
                  height: 251.04,
                ),
                Image.asset(
                  'assets/images/baju.png',
                  width: 177.89,
                  height: 251.04,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/headdphone.png',
                  width: 177.89,
                  height: 251.04,
                ),
                Image.asset(
                  'assets/images/seppatu.png',
                  width: 177.89,
                  height: 251.04,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Color(0xFF00623B),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home, color: Colors.white, size: 30),
            Icon(Icons.wallet_travel_outlined, color: Colors.white, size: 30),
            Icon(Icons.favorite_border, color: Colors.white, size: 30),
            Icon(Icons.notifications_outlined, color: Colors.white, size: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildBubble(String label, Color backgroundColor, Color textColor) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
