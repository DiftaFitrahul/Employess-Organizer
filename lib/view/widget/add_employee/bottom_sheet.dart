import 'package:flutter/material.dart';

class BottomSheetAddEmployeeScreen extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const BottomSheetAddEmployeeScreen(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  @override
  Widget build(
    BuildContext context,
  ) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1.6,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
            ),
            Icon(
              icon,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
