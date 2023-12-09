import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/constants/font_weight.dart';
import 'package:flutter/material.dart';

class HeaderHomeScreen extends StatelessWidget {
  const HeaderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          const Align(
              alignment: Alignment.center,
              child: Text(
                'Contacts',
                style: TextStyle(
                  fontFamily: poppins,
                  fontSize: 20,
                  fontWeight: bold,
                ),
              )),
          Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert_rounded,
                  ))),
        ],
      ),
    );
  }
}
