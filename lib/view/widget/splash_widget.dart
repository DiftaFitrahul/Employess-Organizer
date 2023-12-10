import 'package:flutter/material.dart';

import '../../constants/color.dart';
import '../../constants/font_family.dart';
import '../../constants/font_weight.dart';
import '../../constants/image_path.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
        const Align(
          alignment: Alignment(0, 0.9),
          child: Text(
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
