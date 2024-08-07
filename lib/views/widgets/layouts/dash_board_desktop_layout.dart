import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/drawer_widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_history/my_cart_and_income.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_widgets/all_expences_and_quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

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
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: AllExpensesAndQuickInvoice(),
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 2,
          child: MyCartAndIncome(),
        ),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
