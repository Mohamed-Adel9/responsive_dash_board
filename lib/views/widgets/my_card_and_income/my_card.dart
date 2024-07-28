import 'package:flutter/material.dart';
import 'package:responsive_dash_board/generated/assets.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCardBg)
          ),
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff4EB7F2),
        ),
      ),
    );
  }
}
