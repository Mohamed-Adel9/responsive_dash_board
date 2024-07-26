import 'package:flutter/material.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import 'package:responsive_dash_board/models/all_expenses_cart_model.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_cart.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
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
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map(
        (e) {
          var index = e.key;
          var item = e.value;

          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (index != currentIndex) {
                  setState(() {
                    currentIndex = index;
                  });
                }
              },
              child: Padding(
                padding: index == 1
                    ? const EdgeInsets.symmetric(horizontal: 12.0)
                    : EdgeInsets.zero,
                child: AllExpensesCart(
                  allExpensesCartModel: item,
                  isActive: currentIndex == index,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
