import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingHomeScreen extends StatelessWidget {
  const ShimmerLoadingHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      height: 90,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey.withOpacity(0.15),
            highlightColor: Colors.grey.withOpacity(0.25),
            child: Container(
              height: 75,
              width: 75,
              margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Shimmer.fromColors(
                baseColor: Colors.grey.withOpacity(0.15),
                highlightColor: Colors.grey.withOpacity(0.25),
                child: Container(
                  height: 25,
                  margin:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
              Shimmer.fromColors(
                baseColor: Colors.grey.withOpacity(0.15),
                highlightColor: Colors.grey.withOpacity(0.25),
                child: Container(
                  height: 25,
                  margin:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
                  width: screenWidth * 0.63,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
