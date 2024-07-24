import 'package:flutter/material.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static final UserInfoModel _userInfoModel = UserInfoModel(
    image: Assets.imagesProfileAvatar,
    name: "Lekan Okeowo",
    mail: "demo@gmail.com",
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            userInfoModel: _userInfoModel,
          )
        ],
      ),
    );
  }
}
