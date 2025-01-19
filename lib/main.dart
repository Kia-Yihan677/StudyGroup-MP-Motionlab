import 'package:flutter/material.dart';
import 'package:get/get.dart'; //
import 'package:flutter_application_2/pages/splash_screen.dart';
import 'package:flutter_application_2/pages/login_page.dart';
import 'package:flutter_application_2/pages/register_page.dart';
import 'package:flutter_application_2/pages/home_page.dart';
import 'package:flutter_application_2/pages/cart_page.dart';
import 'package:flutter_application_2/pages/payment_page.dart';
import 'package:flutter_application_2/pages/product_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/register', page: () => const RegisterPage()),
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/cart', page: () => const CartPage()),
        GetPage(name: '/payment', page: () => const PaymentPage()),
        GetPage(name: '/product', page: () => const ProductPage()),
      ],
    );
  }
}
