import 'package:flutter/material.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item_cart.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static final UserInfoModel _userInfoModel = UserInfoModel(
    image: Assets.imagesProfileAvatar,
    name: "Lekan Okeowo",
    mail: "demo@gmail.com",
  );
  static final DrawerItemModel _drawerItemModel2 = DrawerItemModel(
    title: "Logout account",
    image: Assets.imagesLogout,
  );
  static final DrawerItemModel _drawerItemModel1 = DrawerItemModel(
    title: "Setting system",
    image: Assets.imagesSettings,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: _userInfoModel,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 6,
            ),
          ),
          const DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                DrawerItemCart(
                    drawerItemModel: _drawerItemModel1, isActive: false),
                const SizedBox(
                  height: 20,
                ),
                DrawerItemCart(
                    drawerItemModel: _drawerItemModel2, isActive: false),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
