import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expences_widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/all_expences_widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/views/widgets/income_widgets/income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_widgets/income_item_list_view.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomBackGroundContainer(
      padding: 24,
      child: Column(
        children: [
          CustomHeaderWithDropdown(title: "Income",),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(child: IncomeItemListView()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
