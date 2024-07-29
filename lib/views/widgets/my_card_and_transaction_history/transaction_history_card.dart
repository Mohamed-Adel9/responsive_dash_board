import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_cart_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryCard extends StatelessWidget {
  const TransactionHistoryCard(
      {super.key, required this.transactionHistoryCartModel});

  final TransactionHistoryCartModel transactionHistoryCartModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionHistoryCartModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionHistoryCartModel.subtitle,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
        trailing: Text(
          transactionHistoryCartModel.trailing,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionHistoryCartModel.isWithdrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
        // trailing: ,
      ),
    );
  }
}
