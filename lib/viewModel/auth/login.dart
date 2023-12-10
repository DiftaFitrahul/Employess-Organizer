import 'package:employees_organizer/constants/email_pattern.dart';
import 'package:employees_organizer/model/classModel/user_login.dart';
import 'package:employees_organizer/model/constants/auth_state.dart';
import 'package:employees_organizer/model/repository/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart' show TextEditingController;
import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin<AuthState> {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  RxBool isPasswordVisible = false.obs;
  Rx<AuthState> loginState = AuthState.initial.obs;

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
      change(AuthState.loading, status: RxStatus.loading());

      final result = await AuthService().login(
          model: UserLogin(
        email: emailController.value.text,
        password: passwordController.value.text,
      ));

      if (result.status.hasError) {
        change(AuthState.error, status: RxStatus.error());
        return;
      }
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', result.body['token']);

      change(AuthState.success, status: RxStatus.success());
    } catch (e) {
      change(AuthState.error, status: RxStatus.error());
    }
  }

  @override
  void onClose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    super.onClose();
  }
}
