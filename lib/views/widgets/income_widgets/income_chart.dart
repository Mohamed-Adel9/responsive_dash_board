import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartDara(),
      ),
    );
  }

  getPieChartDara() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        touchCallback: (p0, response) {
          currentIndex = response?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          value: 22,
          showTitle: false,
          radius: currentIndex == 0 ? 60 : 50,
          color: const Color(0xffE2DECD),
        ),
        PieChartSectionData(
          value: 20,
          showTitle: false,
          radius: currentIndex == 1 ? 60 : 50,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          radius: currentIndex == 2 ? 60 : 50,
          value: 25,
          showTitle: false,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          showTitle: false,
          radius: currentIndex == 3 ? 60 : 50,
          value: 40,
          color: const Color(0xff208CC8),
        ),
      ],
    );
  }
}
