import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_income/transaction_history_body.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_income/transaction_history_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20,),
        TransactionHistoryBody()
      ],
    );
  }
}
