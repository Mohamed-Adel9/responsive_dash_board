import 'package:flutter/material.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/views/widgets/drawer_widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static final List<UserInfoModel> items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      name: "Madrani Andi",
      mail: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      name: "Josua Nunito",
      mail: "Josh Nunito@gmail.com",
    ),
    UserInfoModel(
      image: Assets.imagesAvatar1,
      name: "Mohamed Adel",
      mail: "ma1704417@gmail.com",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map(
          (e) {
            return IntrinsicWidth(
              child: UserInfoListTile(
                userInfoModel: e,
              ),
            );
          },
        ).toList(),
      ),
    );


    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserInfoListTile(
    //             userInfoModel: items[index],
    //           ),
    //         );
    //       }),
    // ); //first solve for this problem
  }
}
