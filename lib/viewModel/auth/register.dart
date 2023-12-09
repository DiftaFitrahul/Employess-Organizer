import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;
  Rx<TextEditingController> confirmPasswordController =
      TextEditingController().obs;

  RxBool isPasswordVisible = false.obs;
  RxBool isConfirmPasswordVisible = false.obs;

  @override
  void onClose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    confirmPasswordController.value.dispose();
    super.onClose();
  }
}
