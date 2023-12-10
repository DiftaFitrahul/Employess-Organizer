import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/view/routes/routes_name.dart';
import 'package:employees_organizer/view/widget/home/card.dart';
import 'package:employees_organizer/view/widget/home/header.dart';
import 'package:employees_organizer/view/widget/home/search_bar.dart';
import 'package:employees_organizer/view/widget/home/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                  itemCount: state?.length ?? 0,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: CardContactHomeScreen(
                      name:
                          '${state?[index].firstName ?? ''} ${state?[index].lastName ?? ''}',
                      email: state?[index].email ?? '',
                      imageUrl: state?[index].avatar ?? '',
                      onTap: () {
                        Get.toNamed(RoutesName.detail);
                      },
                    ),
                  ),
                ),
                onLoading: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) =>
                        const ShimmerLoadingHomeScreen()),
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
