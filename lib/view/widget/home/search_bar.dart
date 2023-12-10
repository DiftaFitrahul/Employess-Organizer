import 'package:employees_organizer/constants/font_family.dart';
import 'package:flutter/material.dart';

class SearchBarHomeScreen extends StatelessWidget {
  final void Function(String)? onChanged;
  const SearchBarHomeScreen({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        width: double.infinity,
        child: TextField(
          onChanged: onChanged,
          style: const TextStyle(
              fontSize: 17, color: Colors.black, fontFamily: poppins),
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
            filled: true,
            fillColor: Colors.grey[200],
            hintText: 'Search',
            hintStyle: const TextStyle(
                fontSize: 17, color: Colors.grey, fontFamily: poppins),
            prefixIcon: const Icon(Icons.search_rounded),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
