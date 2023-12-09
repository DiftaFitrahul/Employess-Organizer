import 'package:flutter/material.dart';

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Icon(Icons.person_pin_rounded),
            SizedBox(width: 10),
            Text('Login',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
          ],
        )
      ],
    );
  }
}
