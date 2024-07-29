import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/all_expences_widgets/custom_drop_down.dart';

class CustomHeaderWithDropdown extends StatelessWidget {
  const CustomHeaderWithDropdown({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const MyDropdown(),
      ],
    );
  }
}
