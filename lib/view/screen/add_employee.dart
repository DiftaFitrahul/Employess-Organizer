import 'package:flutter/material.dart';

class AddEmployeeScreen extends StatelessWidget {
  const AddEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          const SizedBox(height: 30),
        ],
      ),
    )));
  }
}
