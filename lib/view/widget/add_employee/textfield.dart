import 'package:flutter/material.dart';

class TextFieldAddEmployeeScreen extends StatelessWidget {
  final String placeholder;
  final IconData icon;
  final TextEditingController controller;
  final String? errorText;
  final bool isValid;
  const TextFieldAddEmployeeScreen(
      {super.key,
      required this.placeholder,
      required this.icon,
      required this.controller,
      this.errorText,
      required this.isValid});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      child: TextField(
        controller: controller,
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        decoration: InputDecoration(
            hintText: placeholder,
            hintStyle: const TextStyle(
              fontSize: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            prefixIcon: Icon(icon),
            errorText: isValid ? null : errorText),
      ),
    );
  }
}
