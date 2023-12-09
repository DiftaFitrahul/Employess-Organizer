import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/color.dart';
import '../../../constants/font_family.dart';
import '../../../constants/font_weight.dart';

class DialogAuth {
  static Future<void> showSuccesDialog(
      {required String title, required String description, required}) async {
    Get.defaultDialog(
      radius: 10,
      title: title,
      titlePadding: const EdgeInsets.only(top: 15, bottom: 20),
      contentPadding: const EdgeInsets.only(bottom: 20),
      titleStyle: TextStyle(
        color: Colors.green[700],
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: poppins,
      ),
      middleText: description,
      buttonColor: primatyColor,
      confirm: ElevatedButton(
          onPressed: () {
            Get.back();
            Get.back();
          },
          style: ElevatedButton.styleFrom(
            elevation: 2,
            backgroundColor: primatyColor,
            shadowColor: primatyColor,
          ),
          child: const Text(
            'Back',
            style: TextStyle(
                color: Colors.white, fontFamily: poppins, fontWeight: semiBold),
          )),
    );
  }

  static Future<void> showErrorDialog(
      {required String title,
      required String description,
      VoidCallback? onPressed = defaultPressed}) async {
    Get.defaultDialog(
      radius: 10,
      title: title,
      titlePadding: const EdgeInsets.only(top: 15, bottom: 20),
      contentPadding: const EdgeInsets.only(bottom: 20),
      titleStyle: TextStyle(
        color: Colors.red[700],
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: poppins,
      ),
      middleText: description,
      buttonColor: primatyColor,
      confirm: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 2,
            backgroundColor: primatyColor,
            shadowColor: primatyColor,
          ),
          child: const Text(
            'Back',
            style: TextStyle(
                color: Colors.white, fontFamily: poppins, fontWeight: semiBold),
          )),
    );
  }

  static void defaultPressed() {
    Get.back();
    Get.back();
  }
}
