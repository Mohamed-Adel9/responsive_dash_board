import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/income_widgets/income.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_history/my_card_and_transaction_history.dart';

class MyCartAndIncome extends StatelessWidget {
  const MyCartAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40,),
        Expanded(child: MyCardAndTransactionHistory()),
        SizedBox(height: 24,),
        Expanded(child: Income()),
      ],
    );
  }
}
