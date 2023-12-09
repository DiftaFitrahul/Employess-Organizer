import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/constants/font_weight.dart';
import 'package:flutter/material.dart';

class ButtonAuthWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const ButtonAuthWidget(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            elevation: 4,
            backgroundColor: primatyColor,
            shadowColor: primatyColor,
            minimumSize: const Size(double.infinity, 50)),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontFamily: poppins, fontWeight: semiBold),
        ));
  }
}
