import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expences_widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_income/my_cards_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_income/transaction_history.dart';

class MyCardAndIncome extends StatelessWidget {
  const MyCardAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      padding: 24,
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}

