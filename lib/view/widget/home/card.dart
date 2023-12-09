import 'package:flutter/material.dart';

class CardContactHomeScreen extends StatelessWidget {
  const CardContactHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Name'),
      subtitle: const Text('Phone Number'),
      leading: SizedBox(
        width: 50,
        height: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: const Image(
            image: NetworkImage(
                'https://i.pinimg.com/originals/c0/03/de/c003de1d4027c4558851b893032694d2.jpg'),
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
    );
  }
}
