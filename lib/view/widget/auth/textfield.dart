import 'package:flutter/material.dart';

class TextFieldAuthWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String title;
  final String placeholderText;
  final IconData leadingIcon;

  const TextFieldAuthWidget(
      {super.key,
      required this.textEditingController,
      required this.title,
      required this.placeholderText,
      required this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
