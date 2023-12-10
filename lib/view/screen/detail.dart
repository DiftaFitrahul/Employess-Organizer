import 'package:employees_organizer/constants/color.dart';
import 'package:employees_organizer/constants/font_family.dart';
import 'package:employees_organizer/constants/font_weight.dart';
import 'package:employees_organizer/view/widget/detail/content.dart';
import 'package:employees_organizer/view/widget/detail/user_image.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserImageDetailScreen(),
            SizedBox(height: 80),
            ContentDetailScreen()
          ],
        ),
        Align(
          alignment: AlignmentDirectional.center,
          child: Container(
            width: double.infinity,
            height: 150,
            margin: const EdgeInsets.symmetric(horizontal: 48),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 2),
                  blurRadius: 6,
                )
              ],
            ),
            child: Column(
              children: [
                const Text(
                  'Difta Fitrahul',
                  style: TextStyle(
                      fontFamily: poppins, fontSize: 24, fontWeight: bold),
                ),
                const Text(
                  'difta.sleman@mail.sleman.id',
                  style: TextStyle(
                      fontFamily: poppins, fontSize: 13, fontWeight: normal),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primatyColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 16)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Edit Contact',
                          style: TextStyle(
                              fontFamily: poppins,
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: semiBold),
                        )
                      ],
                    ))
              ],
            ),
          ),
        )
      ]),
    );
  }
}
