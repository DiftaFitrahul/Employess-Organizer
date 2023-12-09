import 'package:employees_organizer/view/widget/home/card.dart';
import 'package:employees_organizer/view/widget/home/header.dart';
import 'package:employees_organizer/view/widget/home/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          HeaderHomeScreen(),
          SizedBox(height: 10),
          SearchBarHomeScreen(),
          SizedBox(height: 10),
          CardContactHomeScreen()
        ],
      ),
    )));
  }
}
