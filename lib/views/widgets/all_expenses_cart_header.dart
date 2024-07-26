
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesCartHeader extends StatelessWidget {
  const AllExpensesCartHeader({
    super.key,
    required this.image,
    required this.isActive,
  });

  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isActive ? const Color(0xff5FBEF3) : const Color(0xffFAFAFA),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            image,
            colorFilter:isActive ? const ColorFilter.mode(Colors.white, BlendMode.srcIn) : null,
          ),
        ),
        const Expanded(child: SizedBox()),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: isActive ? Colors.white : Colors.black,
        )
      ],
    );
  }
}
