import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/view/widget/auth/bottom_navigate_text.dart';
import 'package:employees_organizer/view/widget/auth/button.dart';
import 'package:employees_organizer/view/widget/auth/header_text.dart';
import 'package:employees_organizer/view/widget/auth/textfield.dart';
import 'package:flutter/cupertino.dart';
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
                const SizedBox(height: 30),
                const HeaderTextWidget(),
                const SizedBox(height: 10),
                TextFieldAuthWidget(
                    textEditingController: TextEditingController(),
                    title: 'Email',
                    placeholderText: 'Type your email',
                    leadingIcon: Icons.email_outlined),
                const SizedBox(height: 10),
                TextFieldAuthWidget(
                    textEditingController: TextEditingController(),
                    title: 'Password',
                    placeholderText: 'Type your pasword',
                    leadingIcon: Icons.email_outlined,
                    trailingIcon: IconButton(
                        padding: const EdgeInsets.only(right: 10),
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.eye_solid))),
                const SizedBox(height: 10),
                ButtonAuthWidget(title: 'Sign In', onPressed: () {}),
                const SizedBox(height: 20),
                BottomNavigateTextAuth(
                  text: 'Don\'t have an account ',
                  navigateText: 'Sign Up',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ));
  }
}
