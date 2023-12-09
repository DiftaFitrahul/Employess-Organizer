import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/constants/font_family.dart';
import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.person_pin_rounded, color: primatyColor, size: 35),
            SizedBox(width: 5),
            Text('Employee Organizer',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(height: 5),
        Text(
          'Organize all of employee data in one place easily',
          style: TextStyle(
            fontFamily: poppins,
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
