import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_application_1/pages/widgets/custom_text_field.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Register",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: .5,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Create your account for Happy Shopping",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF707070),
                letterSpacing: .5,
              ),
            ),
            const SizedBox(height: 50),
            const CustomTextField(
              hintText: "Full Name",
              prefixIcon: Icon(Icons.person),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: "Email",
              prefixIcon: Icon(Icons.email),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: "Password",
              prefixIcon: Icon(Icons.lock),
            ),
            const SizedBox(height: 10),
            const CustomTextField(
              hintText: "Confirm Password",
              prefixIcon: Icon(Icons.lock),
            ),
            const SizedBox(height: 45),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/login');
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 140, vertical: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color(0xFF00623B),
              ),
              child: const Text(
                "Registrasi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                text: "Already have an account? ",
                style: const TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "Login",
                    style: const TextStyle(
                      color: Color(0xFF00623B),
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.toNamed('/login');
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
