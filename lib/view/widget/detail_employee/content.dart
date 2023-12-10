import 'package:flutter/material.dart';

import '../../../constants/font_family.dart';
import '../../../constants/font_weight.dart';

class ContentDetailScreen extends StatelessWidget {
  const ContentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Doe',
              style: TextStyle(
                  fontSize: 24, fontWeight: bold, fontFamily: poppins),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, cons ectetur adipiscing elit. Sed qui sese expertus sum, perspicere potest plane: ista vis insidens naturae. Duo Reges: constructio interr ompta nobis opus est.',
              style: TextStyle(
                  fontSize: 13, fontWeight: normal, fontFamily: poppins),
            ),
          ],
        ),
      ),
    ));
  }
}
