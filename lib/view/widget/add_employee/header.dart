import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/constants/font_weight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderAddEmployeeScreen extends StatelessWidget {
  const HeaderAddEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          const Align(
              alignment: Alignment.center,
              child: Text(
                'Add Employee',
                style: TextStyle(
                  fontFamily: poppins,
                  fontSize: 24,
                  fontWeight: bold,
                ),
              )),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                ),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                    )),
              )),
        ],
      ),
    );
  }
}
