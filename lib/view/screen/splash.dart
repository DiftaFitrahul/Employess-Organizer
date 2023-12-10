import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/constants/font_weight.dart';
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
    // Future.delayed(const Duration(milliseconds: 1800)).then((_) {
    //   Get.off(
    //     () => const LoginScreen(),
    //     routeName: RoutesName.login,
    //     binding: LoginScreenBinding(),
    //     transition: Transition.fade,
    //     duration: const Duration(milliseconds: 1300),
    //   );
    // });
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: darkprimatyColor,
      ),
      child: Stack(children: [
        Align(
          alignment: Alignment.center,
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
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment(0, 0.9),
          child: const Text(
            '| By @Difta Fitrahul',
            style: TextStyle(
                fontFamily: poppins,
                fontWeight: semiBold,
                fontSize: 12,
                color: Colors.white),
          ),
        )
      ]),
    ));
  }
}
