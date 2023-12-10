import 'package:flutter/material.dart';

class NumberNavigationHomeScreen extends StatelessWidget {
  final VoidCallback onPressedFirst;
  final VoidCallback onPressedSecond;
  final bool isPressedFirst;
  const NumberNavigationHomeScreen(
      {super.key,
      required this.onPressedFirst,
      required this.onPressedSecond,
      required this.isPressedFirst});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: isPressedFirst ? 0 : null,
              backgroundColor: isPressedFirst ? Colors.grey : null,
            ),
            child: Text(
              '1',
              style: TextStyle(color: isPressedFirst ? Colors.white : null),
            )),
        const SizedBox(width: 20),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: isPressedFirst ? null : 0,
                backgroundColor: isPressedFirst ? null : Colors.grey),
            child: Text(
              '2',
              style: TextStyle(color: isPressedFirst ? null : Colors.white),
            )),
      ],
    );
  }
}
