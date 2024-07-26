import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesCartHeader extends StatelessWidget {
  const AllExpensesCartHeader({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: Color(0xffFAFAFA),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            image,
            color: const Color(0xff4EB7F2),
          ),
        ),
        const Expanded(child: SizedBox()),
        const Icon(Icons.arrow_forward_ios_outlined)
      ],
    );
  }
}
