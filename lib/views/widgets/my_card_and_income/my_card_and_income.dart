import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expences_widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_income/my_card.dart';

class MyCardAndIncome extends StatelessWidget {
  const MyCardAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      padding: 24,
      child: Column(
        children: [
          MyCard(),
        ],
      ),
    );
  }
}

