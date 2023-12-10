import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/view/responsive/register.dart';
import 'package:employees_organizer/view/routes/routes_name.dart';
import 'package:employees_organizer/view/widget/auth/bottom_navigate_text.dart';
import 'package:employees_organizer/view/widget/auth/button.dart';
import 'package:employees_organizer/view/widget/auth/header_text.dart';
import 'package:employees_organizer/view/widget/auth/textfield.dart';
import 'package:employees_organizer/viewModel/auth/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    final registerController = Get.find<RegisterController>();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(height: spaceHeaderRegister(screenHeight)),
                  const Text('Sign Up',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: poppins)),
                  SizedBox(height: spacetitleRegister(screenHeight)),
                  const HeaderTextWidget(),
                  const SizedBox(height: 10),
                  Obx(
                    () => TextFieldAuthWidget(
                      textEditingController:
                          registerController.emailController.value,
                      title: 'Email',
                      placeholderText: 'Type your email',
                      leadingIcon: Icons.email_outlined,
                      validator: (value) {
                        return registerController.validateEmail(value);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Obx(
                    () => TextFieldAuthWidget(
                      textEditingController:
                          registerController.passwordController.value,
                      title: 'Password',
                      placeholderText: 'Type your pasword',
                      leadingIcon: Icons.email_outlined,
                      obscureText: !registerController.isPasswordVisible.value,
                      trailingIcon: IconButton(
                          padding: const EdgeInsets.only(right: 10),
                          onPressed: () {
                            registerController.isPasswordVisible.value =
                                !registerController.isPasswordVisible.value;
                          },
                          icon: Icon(registerController.isPasswordVisible.value
                              ? CupertinoIcons.eye_slash_fill
                              : CupertinoIcons.eye_solid)),
                      validator: (value) {
                        return registerController.validatePassword(value);
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Obx(
                    () => TextFieldAuthWidget(
                      textEditingController:
                          registerController.confirmPasswordController.value,
                      title: 'Confirm Password',
                      placeholderText: 'Type your password again',
                      leadingIcon: Icons.email_outlined,
                      obscureText:
                          !registerController.isConfirmPasswordVisible.value,
                      trailingIcon: IconButton(
                          padding: const EdgeInsets.only(right: 10),
                          onPressed: () {
                            registerController.isConfirmPasswordVisible.value =
                                !registerController
                                    .isConfirmPasswordVisible.value;
                          },
                          icon: Icon(
                              registerController.isConfirmPasswordVisible.value
                                  ? CupertinoIcons.eye_slash_fill
                                  : CupertinoIcons.eye_solid)),
                      validator: (value) {
                        return registerController
                            .validateConfirmPassword(value);
                      },
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(height: 10),
                  ),
                  ButtonAuthWidget(
                      title: 'Sign Up',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Get.toNamed(RoutesName.loadingRegisterAuth);
                          registerController.register();
                        }
                      }),
                  const SizedBox(height: 20),
                  BottomNavigateTextAuth(
                    text: 'Already have an account? ',
                    navigateText: 'Sign In',
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  SizedBox(height: spaceBottomRegister(screenHeight)),
                ],
              ),
            ),
          ),
        ));
  }
}
