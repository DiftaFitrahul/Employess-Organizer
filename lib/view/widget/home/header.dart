import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/constants/font_weight.dart';
import 'package:flutter/material.dart';

class HeaderHomeScreen extends StatelessWidget {
  final void Function(int)? onSelected;
  const HeaderHomeScreen({super.key, required this.onSelected});

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
            child: PopupMenuButton(
                color: Colors.white,
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem<int>(
                      value: 0,
                      child: Text("Favorite"),
                    ),
                    const PopupMenuItem<int>(
                      value: 1,
                      child: Text(
                        "Logout",
                        style:
                            TextStyle(color: Colors.red, fontFamily: poppins),
                      ),
                    ),
                  ];
                },
                onSelected: onSelected),
          ),
        ],
      ),
    );
  }
}
