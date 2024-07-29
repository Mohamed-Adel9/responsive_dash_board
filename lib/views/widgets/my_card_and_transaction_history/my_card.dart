import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(image: AssetImage(Assets.imagesCardBg)),
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff4EB7F2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.only( top: -4 ,left: 7, right: 18),
                trailing: SvgPicture.asset(Assets.imagesGallery),
                title: Text(
                  'Name card',
                  style: AppStyles.styleRegular16(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Syah Bandi',
                  style: AppStyles.styleMedium20(context),
                ),
              ),
              const Spacer(),
              Text(
                "0918 8124 0042 8129",
                style: AppStyles.styleSemiBold24(context).copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12,),
              Text(
                "12/20 - 124",
                style: AppStyles.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
