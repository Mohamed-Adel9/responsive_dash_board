import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expences_widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/drawer_widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_income/my_card_and_income.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_widgets/all_expences_and_Quick_invoice.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_widgets/quick_invoice.dart';

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
          child: AllExpensesAndQuickInvoice(),
        ),
        Expanded(
          flex: 2,
          child: MyCardAndIncome(),
        ),
      ],
    );
  }
}

