import 'package:get/get.dart';
import 'package:flutter_application_2/app/views/splash_screen.dart';
import 'package:flutter_application_2/app/views/login_page.dart';
import 'package:flutter_application_2/app/views/register_page.dart';
import 'package:flutter_application_2/app/views/home_page.dart';
import 'package:flutter_application_2/app/views/cart_page.dart';
import 'package:flutter_application_2/app/views/payment_page.dart';
import 'package:flutter_application_2/app/views/detail_product.dart';
import 'package:flutter_application_2/app/bindings/home_binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.CART,
      page: () => const CartPage(),
    ),
    GetPage(
      name: Routes.PAYMENT,
      page: () => const PaymentPage(),
    ),
    GetPage(
      name: Routes.PRODUCT,
      page: () => const ProductPage(),
    ),
  ];
}
