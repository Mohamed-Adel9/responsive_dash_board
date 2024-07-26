import 'package:flutter/material.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import 'package:responsive_dash_board/models/all_expenses_cart_model.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_cart.dart';

class AllExpensesListView extends StatelessWidget {
  const AllExpensesListView({super.key});

  static final List<AllExpensesCartModel> items = [
    AllExpensesCartModel(
      title: "Balance",
      image: Assets.imagesBalance,
      date: "April 2022",
      balance: r"$20,129",
    ),
    AllExpensesCartModel(
      title: "Income",
      image: Assets.imagesIncome,
      date: "April 2022",
      balance: r"$20,129",
    ),
    AllExpensesCartModel(
      title: "Expenses",
      image: Assets.imagesExpenses,
      date: "April 2022",
      balance: r"$20,129",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return AllExpensesCart(
          allExpensesCartModel: items[index],
        );
      },
    );
  }
}
