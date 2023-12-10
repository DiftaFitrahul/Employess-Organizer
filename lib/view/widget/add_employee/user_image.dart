import 'package:flutter/material.dart';

class UserImageAddEmployeeScreen extends StatelessWidget {
  const UserImageAddEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: Colors.grey),
      child: Stack(children: [
        const Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.person,
            size: 100,
            color: Colors.white,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () {},
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey),
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
