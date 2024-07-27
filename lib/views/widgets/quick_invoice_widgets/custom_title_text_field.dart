import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_widgets/custom_text_field.dart';

class CustomTitleTextField extends StatelessWidget {
  const CustomTitleTextField({super.key, required this.title, required this.hint});
  final String title;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
        style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 12,),
        CustomTextField(hint: hint)
      ],
    );
  }
}
