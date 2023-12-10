import 'package:flutter/material.dart';

class UserImageDetailScreen extends StatelessWidget {
  final String imageUrl;
  const UserImageDetailScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      width: screenWidth,
      height: screenWidth,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
