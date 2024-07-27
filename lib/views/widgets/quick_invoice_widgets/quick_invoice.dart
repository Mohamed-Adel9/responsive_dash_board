import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expences_widgets/all_expenses.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_widgets/custom_title_text_field.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_widgets/latest_transaction.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomBackGroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24,),
          LatestTransaction(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 48,
          ),
          CustomTitleTextField(title: "Customer Name", hint: "Type customer name")
        ],
      ),
    );
  }
}



