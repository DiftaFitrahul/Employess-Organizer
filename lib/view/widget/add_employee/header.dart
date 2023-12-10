import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/constants/font_weight.dart';
import 'package:flutter/material.dart';

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
                'Contacts',
                style: TextStyle(
                  fontFamily: poppins,
                  fontSize: 24,
                  fontWeight: bold,
                ),
              )),
          Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert_rounded,
                    size: 28,
                  ))),
        ],
      ),
    );
  }
}
