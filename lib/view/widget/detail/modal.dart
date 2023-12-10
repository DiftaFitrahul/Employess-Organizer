import 'package:flutter/material.dart';

import '../../../constants/color.dart';
import '../../../constants/font_family.dart';
import '../../../constants/font_weight.dart';

class ModalDetailScreen extends StatelessWidget {
  final String name;
  final String email;
  const ModalDetailScreen({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child: Container(
        width: double.infinity,
        height: 150,
        margin: const EdgeInsets.symmetric(horizontal: 48),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 6,
            )
          ],
        ),
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                  fontFamily: poppins, fontSize: 24, fontWeight: bold),
            ),
            Text(
              email,
              style: const TextStyle(
                  fontFamily: poppins, fontSize: 13, fontWeight: normal),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: primatyColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16)),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.edit_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Edit Contact',
                      style: TextStyle(
                          fontFamily: poppins,
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: semiBold),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
