import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/constants/image_path.dart';
import 'package:employees_organizer/view/bindings/login.dart';
import 'package:employees_organizer/view/routes/routes_name.dart';
import 'package:employees_organizer/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Get.off(
        () => const LoginScreen(),
        routeName: RoutesName.login,
        binding: LoginScreenBinding(),
        transition: Transition.fade,
        duration: const Duration(milliseconds: 1000),
      );
    });
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: darkprimatyColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            logoPath,
            height: 150,
            width: 250,
            fit: BoxFit.fitHeight,
          ),
          const Text(
            'Employee Organizer',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: poppins),
          )
        ],
      ),
    ));
  }
}
