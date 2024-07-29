import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expences_widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/all_expences_widgets/all_expenses_header.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      padding: 24,
      child: Column(
        children: [
          CustomHeaderWithDropdown(title: "Income",)
        ],
      ),
    );
  }
}
