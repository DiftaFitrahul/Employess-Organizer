import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/constants/font_family.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BottomNavigateTextAuth extends StatelessWidget {
  final String text;
  final String navigateText;
  final VoidCallback onPressed;
  const BottomNavigateTextAuth(
      {super.key,
      required this.text,
      required this.navigateText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: text,
          style: const TextStyle(color: Colors.black, fontFamily: poppins)),
      TextSpan(
          recognizer: TapGestureRecognizer()..onTap = onPressed,
          text: navigateText,
          style: const TextStyle(
              color: primatyColor,
              fontFamily: poppins,
              fontWeight: FontWeight.bold))
    ]));
  }
}
