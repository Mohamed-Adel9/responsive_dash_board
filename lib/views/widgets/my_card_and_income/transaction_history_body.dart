import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_income/transaction_history_list_view.dart';

class TransactionHistoryBody extends StatelessWidget {
  const TransactionHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(height: 8.0),
        const TransactionHistoryListView()
      ],
    );
  }
}
