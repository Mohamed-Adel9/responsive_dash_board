import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/all_expenses_cart_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_cart_header.dart';

class AllExpensesCart extends StatelessWidget {
  const AllExpensesCart({super.key, required this.allExpensesCartModel});

  final AllExpensesCartModel allExpensesCartModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xffF1F1F1), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesCartHeader(image: allExpensesCartModel.image),
          const SizedBox(height: 34),
          Text(
            allExpensesCartModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          const SizedBox(height: 8,),
          Text(
            allExpensesCartModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(height: 16,),

          Text(
            allExpensesCartModel.balance,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

