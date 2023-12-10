import 'package:employees_organizer/view/widget/add_employee/header.dart';
import 'package:employees_organizer/view/widget/add_employee/user_image.dart';
import 'package:flutter/material.dart';

class AddEmployeeScreen extends StatelessWidget {
  const AddEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const HeaderAddEmployeeScreen(),
          UserImageAddEmployeeScreen()
        ],
      ),
    )));
  }
}
