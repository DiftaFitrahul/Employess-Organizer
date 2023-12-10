import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/color.dart';
import '../../../constants/font_family.dart';
import '../../../constants/font_weight.dart';

class AddEmployeeDialog {
  static Future<void> showSuccesDialog(
      {required String title,
      required String description,
      required VoidCallback onPressed}) async {
    Get.defaultDialog(
      radius: 10,
      title: title,
      titlePadding: const EdgeInsets.only(top: 15, bottom: 20),
      contentPadding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
      titleStyle: const TextStyle(
        color: darkprimatyColor,
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
            "Back to Login",
            style: TextStyle(
                color: Colors.white, fontFamily: poppins, fontWeight: semiBold),
          )),
    );
  }

  static Future<void> showLoadingDialog(
      {required String title,
      required String description,
      required VoidCallback onPressed}) async {
    Get.defaultDialog(
      radius: 10,
      title: title,
      titlePadding: const EdgeInsets.only(top: 15, bottom: 20),
      contentPadding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
      titleStyle: const TextStyle(
        color: darkprimatyColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: poppins,
      ),
      middleText: description,
      buttonColor: primatyColor,
    );
  }
}
