import 'package:flutter/material.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/views/widgets/drawer_widgets/drawer_item_cart.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {

  final List<DrawerItemModel> drawerItemData = [
    DrawerItemModel(title: "DashBoard", image: Assets.imagesDashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.imagesMyTransaction),
    DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    DrawerItemModel(
        title: "Wallet Account", image: Assets.assetsImagesWalletAccount),
    DrawerItemModel(title: "My Investments", image: Assets.imagesMyInvestment),
  ];
  int currentIndex =0 ;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItemData.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if( currentIndex !=index){
              setState(() {
                currentIndex = index ;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItemCart(
              drawerItemModel: drawerItemData[index],
              isActive: currentIndex == index ,
            ),
          ),
        );
      },
    );
  }
}
