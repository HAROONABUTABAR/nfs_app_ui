import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ImageWithTextSection extends StatelessWidget {
  const ImageWithTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/connect_wallet_image/wallet_connect.png",
          width: 207,
          height: 207,
        ),
        verticalSpace(20.h),
        Text(
          "Choose your wallet",
          style: TextStyles.font32BlueBold,
          textAlign: TextAlign.center,
        ),
        verticalSpace(10.h),
        Center(
          child: Text.rich(
            TextSpan(
              text:
                  'By connecting your wallet you agree to \nour', // default style
              style: TextStyles.font16WhiteMedium
                  .copyWith(color: ColorsManager.grayColor),
              children: <TextSpan>[
                TextSpan(
                  text: ' Terms of Service',
                  style: TextStyles.font16WhiteMedium
                      .copyWith(color: ColorsManager.whiteColor),
                ),
                TextSpan(
                  text: ' and',
                  style: TextStyles.font16WhiteMedium
                      .copyWith(color: ColorsManager.grayColor),
                ),
                TextSpan(
                  text: ' Privacy Policy',
                  style: TextStyles.font16WhiteMedium
                      .copyWith(color: ColorsManager.whiteColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
