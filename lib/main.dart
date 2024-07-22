import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dash_board_home_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive DashBoard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const DashBoardHomeView(),
    );
  }
}

