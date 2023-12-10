import 'package:employees_organizer/view/widget/detail_employee/content.dart';
import 'package:employees_organizer/view/widget/detail_employee/header_icon.dart';
import 'package:employees_organizer/view/widget/detail_employee/modal.dart';
import 'package:employees_organizer/view/widget/detail_employee/user_image.dart';
import 'package:employees_organizer/viewModel/detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final detailScreenController = Get.find<DetailController>();

    return Scaffold(
        body: detailScreenController.obx(
      (state) => Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserImageDetailScreen(imageUrl: state?.avatar ?? ''),
            const SizedBox(height: 80),
            const ContentDetailScreen(),
          ],
        ),
        const HeaderIconDetailScreen(),
        ModalDetailScreen(
            name: '${state?.firstName ?? ''} ${state?.lastName ?? ''}',
            email: state?.email ?? ''),
      ]),
      onLoading: const Center(child: CircularProgressIndicator()),
      onError: (error) => Center(child: Text(error.toString())),
    ));
  }
}
