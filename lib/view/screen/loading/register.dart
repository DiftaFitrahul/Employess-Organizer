import 'package:employees_organizer/view/routes/routes_name.dart';
import 'package:employees_organizer/view/widget/auth/dialog.dart';
import 'package:employees_organizer/view/widget/auth/loading.dart';
import 'package:employees_organizer/viewModel/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingRegisterAuth extends StatelessWidget {
  const LoadingRegisterAuth({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<LoginController>();
    return Scaffold(
        body: loginController.obx(
      (state) {
        Future.delayed(const Duration(milliseconds: 700), () {
          Get.offAllNamed(RoutesName.home);
        });
        return const LoadingWidget();
      },
      onLoading: const LoadingWidget(),
      onError: (error) {
        Future.delayed(const Duration(milliseconds: 500), () {
          DialogAuth.showErrorDialog();
        });
        return const LoadingWidget();
      },
    ));
  }
}
