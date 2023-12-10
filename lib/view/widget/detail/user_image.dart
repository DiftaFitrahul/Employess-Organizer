import 'package:flutter/material.dart';

class UserImageDetailScreen extends StatelessWidget {
  const UserImageDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      width: screenWidth,
      height: screenWidth,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        image: DecorationImage(
          image: NetworkImage(
              'https://i.pinimg.com/originals/c0/03/de/c003de1d4027c4558851b893032694d2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
