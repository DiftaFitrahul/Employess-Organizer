import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/constants/font_weight.dart';
import 'package:employees_organizer/view/widget/detail/content.dart';
import 'package:employees_organizer/view/widget/detail/modal.dart';
import 'package:employees_organizer/view/widget/detail/user_image.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserImageDetailScreen(),
            SizedBox(height: 80),
            ContentDetailScreen(),
          ],
        ),
        Align(
          alignment: Alignment.center,
          child: ModalDetailScreen(),
        )
      ]),
    );
  }
}
