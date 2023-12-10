import 'package:employees_organizer/view/bindings/home.dart';
import 'package:employees_organizer/view/bindings/login.dart';
import 'package:employees_organizer/view/routes/routes_name.dart';
import 'package:employees_organizer/view/screen/auth/login.dart';
import 'package:employees_organizer/view/screen/home.dart';
import 'package:employees_organizer/view/widget/splash_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../viewModel/splash.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashController = Get.find<SplashScreenController>();

    return splashController.obx(
      (state) {
        Future.delayed(const Duration(milliseconds: 1800)).then((_) {
          Get.off(
            () => const HomeScreen(),
            routeName: RoutesName.home,
            binding: HomeScreenBinding(),
            transition: Transition.fade,
            duration: const Duration(milliseconds: 1300),
          );
        });
        return const SplashWidget();
      },
      onLoading: const SplashWidget(),
      onError: (error) {
        Future.delayed(const Duration(milliseconds: 1800)).then((_) {
          Get.off(
            () => const LoginScreen(),
            routeName: RoutesName.login,
            binding: LoginScreenBinding(),
            transition: Transition.fade,
            duration: const Duration(milliseconds: 1300),
          );
        });
        return const SplashWidget();
      },
    );
  }
}
