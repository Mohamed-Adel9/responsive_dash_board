import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_cart_model.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_history/transaction_history_card.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static final List<TransactionHistoryCartModel> items = [
    TransactionHistoryCartModel(
      title: "Cash Withdrawal",
      subtitle: "13 Apr, 2022 ",
      trailing: r"$20,129",
      isWithdrawal: true,
    ),
    TransactionHistoryCartModel(
      title: "Landing Page project",
      subtitle: "13 Apr, 2022 at 3:30 PM",
      isWithdrawal: false,
      trailing: r"$2,000",
    ),
    TransactionHistoryCartModel(
      title: "Juni Mobile App project",
      subtitle: "13 Apr, 2022 at 3:30 PM",
      trailing: r"$20,129",
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: TransactionHistoryCard(
            transactionHistoryCartModel: items[index],
          ),
        );
      },
    );
  }
}
