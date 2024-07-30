import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_model.dart';
import 'package:responsive_dash_board/views/widgets/income_widgets/income_item.dart';

class IncomeItemListView extends StatelessWidget {
  const IncomeItemListView({super.key});

  static final List<IncomeItemModel> items = [
    IncomeItemModel(
      title: "Design service",
      color: const Color(0xff208CC8),
      value: "%40",
    ),
    IncomeItemModel(
      title: "Design product",
      color: const Color(0xff4EB7F2),
      value: "%25",
    ),
    IncomeItemModel(
      title: "Product royalti",
      color: const Color(0xff064061),
      value: "%20",
    ),
    IncomeItemModel(
      title: "Other",
      color: const Color(0xffE2DECD),
      value: "%22",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return IncomeItem(
          incomeItemModel: items[index],
        );
      },
    );
  }
}
