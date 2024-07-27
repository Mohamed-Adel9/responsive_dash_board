import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/layouts/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/layouts/dash_board_desktop_layout.dart';

class DashBoardHomeView extends StatelessWidget {
  const DashBoardHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DashBoardDesktopLayout(),
        ),
    );

  }
}
