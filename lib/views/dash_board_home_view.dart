import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/drawer_widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/layouts/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/layouts/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/layouts/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/layouts/dash_board_tablet_layout.dart';

class DashBoardHomeView extends StatelessWidget {
  const DashBoardHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MediaQuery.sizeOf(context).width <= 800
          ? SizedBox(
              width: MediaQuery.sizeOf(context).width * .70,
              child: const CustomDrawer(),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDesktopLayout(),
      ),
    );
  }
}
