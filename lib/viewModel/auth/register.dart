import 'package:employees_organizer/constants/email_pattern.dart';
import 'package:employees_organizer/model/classModel/user_register.dart';
import 'package:employees_organizer/model/constants/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/repository/auth.dart';

class RegisterController extends GetxController with StateMixin<AuthState> {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  Rx<TextEditingController> confirmPasswordController =
      TextEditingController().obs;

  RxBool isPasswordVisible = false.obs;
  RxBool isConfirmPasswordVisible = false.obs;

  String? validateEmail(String? value) {
    const pattern = emailPattern;
    final regex = RegExp(pattern);

    return value!.isEmpty || !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Confirm Password is required';
    } else if (value.length < 6) {
      return 'Confirm Password must be at least 6 characters';
    } else if (value != passwordController.value.text) {
      return 'Confirm Password must be same as password';
    }
    return null;
  }

  Future<void> register() async {
    try {
      change(AuthState.loading, status: RxStatus.loading());

      final result = await AuthService().register(
          model: UserRegister(
        email: emailController.value.text,
        password: passwordController.value.text,
      ));

      if (result.status.hasError) {
        change(AuthState.error, status: RxStatus.error());
        return;
      }

      change(AuthState.success, status: RxStatus.success());
    } catch (e) {
      change(AuthState.error, status: RxStatus.error());
    }
  }

  @override
  void onClose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    confirmPasswordController.value.dispose();
    super.onClose();
  }
}
