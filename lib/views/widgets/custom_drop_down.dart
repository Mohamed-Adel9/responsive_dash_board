import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String dropdownValue = 'Monthly';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffF1F1F1)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButton<String>(
        dropdownColor: Colors.white,
        value: dropdownValue,
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: Color(0xFF064061),
          size: 24,
        ),
        iconSize: 24,
        elevation: 0,
        style: AppStyles.styleMedium16(context),
        underline: Container(
          height: 2,
          color: Colors.transparent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: <String>['Monthly', 'Weekly', 'Daily']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
