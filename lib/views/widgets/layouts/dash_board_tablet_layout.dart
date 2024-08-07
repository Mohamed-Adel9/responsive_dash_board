import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/drawer_widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/income_widgets/income.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_history/my_card_and_transaction_history.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_widgets/all_expences_and_quick_invoice.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 40.0),
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
          ),
        ),
      ],
    );
  }
}
