import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/constants/font_family.dart';
import 'package:flutter/material.dart';

class CardContactHomeScreen extends StatelessWidget {
  final String name;
  final String email;
  final String imageUrl;

  const CardContactHomeScreen(
      {super.key,
      required this.name,
      required this.email,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(fontFamily: poppins),
      ),
      subtitle: Text(
        email,
        style: const TextStyle(fontFamily: poppins),
      ),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: primatyColor, width: 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.star_border,
            size: 25,
          )),
      onTap: () {},
    );
  }
}
