import 'dart:io';

import 'package:employees_organizer/constants/color.dart';
import 'package:flutter/material.dart';

class UserImageAddEmployeeScreen extends StatelessWidget {
  final VoidCallback onTap;
  final String imagePath;
  const UserImageAddEmployeeScreen(
      {super.key, required this.onTap, this.imagePath = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromARGB(255, 109, 113, 138)),
      child: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: imagePath.isNotEmpty
              ? SizedBox(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.file(
                      File(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : const Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.white,
                ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: onTap,
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(100),
                  color: darkprimatyColor),
              child: const Icon(
                Icons.edit_outlined,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
