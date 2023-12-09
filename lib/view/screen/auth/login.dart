import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/view/widget/auth/button.dart';
import 'package:employees_organizer/view/widget/auth/header_text.dart';
import 'package:employees_organizer/view/widget/auth/textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Text('Sign In',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: poppins)),
                HeaderTextWidget(),
                const SizedBox(height: 10),
                TextFieldAuthWidget(
                    textEditingController: TextEditingController(),
                    title: 'Email',
                    placeholderText: 'Type your email',
                    leadingIcon: Icons.email_outlined),
                const SizedBox(height: 10),
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
