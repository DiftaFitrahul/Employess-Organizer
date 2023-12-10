import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/view/routes/routes_name.dart';
import 'package:employees_organizer/view/widget/home/card.dart';
import 'package:employees_organizer/view/widget/home/header.dart';
import 'package:employees_organizer/view/widget/home/number_navigation.dart';
import 'package:employees_organizer/view/widget/home/search_bar.dart';
import 'package:employees_organizer/view/widget/home/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../viewModel/detail_employee.dart';
import '../../viewModel/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    final detailControlle = Get.find<DetailController>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        child: Obx(() {
          return Column(
            children: [
              const SizedBox(height: 30),
              HeaderHomeScreen(
                onSelected: (value) {
                  if (value == 1) {
                    homeController.signOut().then((value) {
                      Get.offAllNamed(RoutesName.login);
                    });
                  }
                },
              ),
              const SizedBox(height: 10),
              SearchBarHomeScreen(
                onChanged: (value) {
                  homeController.searchEmployee.value = value;
                },
              ),
              const SizedBox(height: 20),
              NumberNavigationHomeScreen(
                  onPressedFirst: () {
                    homeController.getEmployees(page: 1);
                  },
                  onPressedSecond: () {
                    homeController.getEmployees(page: 2);
                  },
                  isPressedFirst: homeController.isPressedFirst.value),
              homeController.searchEmployee.value.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: homeController.filteredEmployees.length,
                        itemBuilder: (context, index) {
                          return CardContactHomeScreen(
                            name:
                                '${homeController.filteredEmployees[index].firstName ?? ''} ${homeController.filteredEmployees[index].lastName ?? ''}',
                            email:
                                homeController.filteredEmployees[index].email ??
                                    '',
                            imageUrl: homeController
                                    .filteredEmployees[index].avatar ??
                                '',
                            onTap: () {
                              detailControlle.getSingleEmployee(
                                  id: homeController
                                          .filteredEmployees[index].id ??
                                      0);
                              Get.toNamed(RoutesName.detail);
                            },
                          );
                        },
                      ),
                    )
                  : Expanded(
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
                                detailControlle.getSingleEmployee(
                                    id: state?[index].id ?? 0);
                                Get.toNamed(RoutesName.detail);
                              },
                            ),
                          ),
                        ),
                        onLoading: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) =>
                                const ShimmerLoadingHomeScreen()),
                        onError: (error) =>
                            Center(child: Text(error.toString())),
                      ),
                    ),
            ],
          );
        }),
      )),
      floatingActionButton: Transform.translate(
        offset: const Offset(-10, -10),
        child: FloatingActionButton(
          backgroundColor: darkprimatyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          onPressed: () {
            Get.toNamed(RoutesName.addEmployee);
          },
          child: const Icon(Icons.add_rounded, size: 30, color: Colors.white),
        ),
      ),
    );
  }
}
