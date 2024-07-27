import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerItemCart extends StatelessWidget {
  const DrawerItemCart(
      {super.key, required this.drawerItemModel, required this.isActive});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image ),
      title: Text(
        drawerItemModel.title,
        style: isActive ? AppStyles.styleBold16(context) : AppStyles.styleMedium16(context),
      ),
      trailing: isActive ?Container(
        width: 3.27,
        color: const Color(0xff4EB7F2),
      ): null ,
    );
  }
}
