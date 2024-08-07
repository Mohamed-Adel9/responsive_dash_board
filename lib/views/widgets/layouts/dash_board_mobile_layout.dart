import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/income_widgets/income.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_history/my_card_and_transaction_history.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_widgets/all_expences_and_quick_invoice.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            AllExpensesAndQuickInvoice(),
            SizedBox(
              height: 24,
            ),
            MyCardAndTransactionHistory(),
            SizedBox(
              height: 24,
            ),
            Income(),
          ],
        ),
      ),
    );
  }
}
