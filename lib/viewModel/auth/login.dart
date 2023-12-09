import 'package:employees_organizer/constants/email_pattern.dart';
import 'package:employees_organizer/model/classModel/user_login.dart';
import 'package:employees_organizer/model/constants/login_state.dart';
import 'package:employees_organizer/model/repository/auth.dart';
import 'package:flutter/material.dart' show TextEditingController;
import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin<LoginState> {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  RxBool isPasswordVisible = false.obs;
  Rx<LoginState> loginState = LoginState.initial.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

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

  Future<void> login() async {
    try {
      change(LoginState.loading, status: RxStatus.loading());

      final result = await AuthService().login(
          model: UserLogin(
        email: emailController.value.text,
        password: passwordController.value.text,
      ));

      if (result.status.hasError) {
        change(LoginState.error, status: RxStatus.error());
        return;
      }

      change(LoginState.success, status: RxStatus.success());
    } catch (e) {
      change(LoginState.error, status: RxStatus.error());
    }
  }

  @override
  void onClose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    super.onClose();
  }
}
