import 'package:employees_organizer/view/widget/detail/content.dart';
import 'package:employees_organizer/view/widget/detail/header_icon.dart';
import 'package:employees_organizer/view/widget/detail/modal.dart';
import 'package:employees_organizer/view/widget/detail/user_image.dart';
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
            UserImageDetailScreen(),
            SizedBox(height: 80),
            ContentDetailScreen(),
          ],
        ),
        HeaderIconDetailScreen(),
        ModalDetailScreen(
            name: '${state?.firstName ?? ''} ${state?.lastName ?? ''}',
            email: state?.email ?? ''),
      ]),
      onLoading: const Center(child: CircularProgressIndicator()),
      onError: (error) => Center(child: Text(error.toString())),
    ));
  }
}
