import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_income/custom_dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 6.0,top: 8.0),
          child: CustomDotIndicator(isActive: false),
        ),
      ),
    );
  }
}
