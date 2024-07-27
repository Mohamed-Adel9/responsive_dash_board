import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_widgets/custom_button.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_widgets/custom_text_button.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_widgets/custom_title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                title: "Customer Name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleTextField(
                title: "Customer E-mail",
                hint: "Type customer E-mail",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                title: "Item Name",
                hint: "Type item name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTitleTextField(
                title: "Item Amount",
                hint: "USD",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextButton(),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButton(),
            ),
          ],
        ),
      ],
    );
  }
}
