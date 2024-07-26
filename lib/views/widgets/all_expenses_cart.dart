import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_cart_model.dart';
import 'package:responsive_dash_board/views/widgets/in_active_all_expenses_cart_and_active.dart';

class AllExpensesCart extends StatelessWidget {
  const AllExpensesCart(
      {super.key, required this.allExpensesCartModel, required this.isActive});

  final AllExpensesCartModel allExpensesCartModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesCart(allExpensesCartModel: allExpensesCartModel)
        : InActiveAllExpensesCart(allExpensesCartModel: allExpensesCartModel);
  }
}
