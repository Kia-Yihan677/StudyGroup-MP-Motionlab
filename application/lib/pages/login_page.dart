import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';
import 'package:slicing_ui/pages/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                'assets/lottie/lottie_login2.json',
                height: 200,
                width: 265.9,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome!",
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                letterSpacing: .5,
              ),
            ),
            const Text(
              "Happy Shopping All",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF707070),
              ),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: "Email",
              prefixIcon: Icon(Icons.email),
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              hintText: "Password",
              prefixIcon: Icon(Icons.lock),
            ),
            const SizedBox(height: 45),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 170, vertical: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color(0xFF00623B),
              ),
              child: const Text(
                "login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "Register",
                    style: const TextStyle(
                      color: Color(0xFF00623B),
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, '/register');
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
