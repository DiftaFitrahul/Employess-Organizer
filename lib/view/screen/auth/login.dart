import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/view/widget/auth/button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text('Sign In',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: poppins)),
            ButtonAuthWidget(title: 'Sign In', onPressed: () {}),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 300,
              color: Colors.purple,
            ),
            const Text('Login'),
          ],
        ),
      ),
    ));
  }
}
