import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_cart_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/all_expences_widgets/all_expenses_cart_header.dart';

class InActiveAllExpensesCart extends StatelessWidget {
  const InActiveAllExpensesCart({
    super.key,
    required this.allExpensesCartModel,
  });

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
          AllExpensesCartHeader(image: allExpensesCartModel.image,isActive: false,),
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



class ActiveAllExpensesCart extends StatelessWidget {
  const ActiveAllExpensesCart({
    super.key,
    required this.allExpensesCartModel,
  });

  final AllExpensesCartModel allExpensesCartModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesCartHeader(image: allExpensesCartModel.image, isActive: true,),
          const SizedBox(height: 34),
          Text(
            allExpensesCartModel.title,
            style: AppStyles.styleSemiBold16(context).copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8,),
          Text(
            allExpensesCartModel.date,
            style: AppStyles.styleRegular14(context).copyWith(color: const Color(0xffFAFAFA)),
          ),
          const SizedBox(height: 16,),

          Text(
            allExpensesCartModel.balance,
            style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

