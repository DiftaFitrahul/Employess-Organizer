import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/view/widget/home/card.dart';
import 'package:employees_organizer/view/widget/home/header.dart';
import 'package:employees_organizer/view/widget/home/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../viewModel/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const HeaderHomeScreen(),
            const SizedBox(height: 10),
            const SearchBarHomeScreen(),
            const SizedBox(height: 20),
            Expanded(
              child: homeController.obx(
                (state) => ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: CardContactHomeScreen(),
                  ),
                ),
                onLoading: SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Shimmer.fromColors(
                      baseColor: Colors.black54,
                      highlightColor: Colors.black38,
                      child: const SizedBox()),
                ),
                onError: (error) => Center(child: Text(error.toString())),
              ),
            ),
          ],
        ),
      )),
      floatingActionButton: Transform.translate(
        offset: const Offset(-10, -10),
        child: FloatingActionButton(
          backgroundColor: darkprimatyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          onPressed: () {},
          child: const Icon(Icons.add_rounded, size: 30, color: Colors.white),
        ),
      ),
    );
  }
}
