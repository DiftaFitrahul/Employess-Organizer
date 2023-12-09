import 'package:employees_organizer/view/routes/routes_name.dart';
import 'package:employees_organizer/view/widget/auth/dialog.dart';
import 'package:employees_organizer/view/widget/auth/loading.dart';
import 'package:employees_organizer/viewModel/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingRegisterAuth extends StatelessWidget {
  const LoadingRegisterAuth({super.key});

  @override
  Widget build(BuildContext context) {
    final registerController = Get.find<RegisterController>();
    return Scaffold(
        body: registerController.obx(
      (state) {
        Future.delayed(const Duration(milliseconds: 700), () {});
        return const LoadingWidget();
      },
      onLoading: const LoadingWidget(),
      onError: (error) {
        Future.delayed(const Duration(milliseconds: 500), () {
          DialogAuth.showErrorDialog(
              title: 'Register Failed',
              description: 'Something went wrong! Please try again later');
        });
        return const LoadingWidget();
      },
    ));
  }
}
