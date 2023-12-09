import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/view/routes/routes_name.dart';
import 'package:employees_organizer/view/widget/auth/bottom_navigate_text.dart';
import 'package:employees_organizer/view/widget/auth/button.dart';
import 'package:employees_organizer/view/widget/auth/header_text.dart';
import 'package:employees_organizer/view/widget/auth/textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../viewModel/auth/login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final loginController = Get.find<LoginController>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Form(
              key: formKey,
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
                  Obx(
                    () => TextFieldAuthWidget(
                      textEditingController:
                          loginController.emailController.value,
                      title: 'Email',
                      placeholderText: 'Type your email',
                      leadingIcon: Icons.email_outlined,
                      validator: (value) {
                        return loginController.validateEmail(value);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Obx(
                    () => TextFieldAuthWidget(
                      textEditingController:
                          loginController.passwordController.value,
                      title: 'Password',
                      placeholderText: 'Type your pasword',
                      leadingIcon: Icons.email_outlined,
                      obscureText: !loginController.isPasswordVisible.value,
                      trailingIcon: IconButton(
                          padding: const EdgeInsets.only(right: 10),
                          onPressed: () {
                            loginController.isPasswordVisible.value =
                                !loginController.isPasswordVisible.value;
                          },
                          icon: Icon(loginController.isPasswordVisible.value
                              ? CupertinoIcons.eye_solid
                              : CupertinoIcons.eye_slash_fill)),
                      validator: (value) {
                        return loginController.validatePassword(value);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  ButtonAuthWidget(
                      title: 'Sign In',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                      }),
                  const SizedBox(height: 20),
                  BottomNavigateTextAuth(
                    text: 'Don\'t have an account ',
                    navigateText: 'Sign Up',
                    onPressed: () {
                      Get.offAndToNamed(RoutesName.register);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
