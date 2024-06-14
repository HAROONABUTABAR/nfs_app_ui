import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class EthWithIconSection extends StatelessWidget {
  const EthWithIconSection(
      {super.key, required this.hasIconOrText, required this.textMain});
  final bool hasIconOrText;
  final String textMain;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.w,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 9.8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorsManager.secondaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          hasIconOrText == true
              ? SvgPicture.asset(
                  "assets/images/home_image/logos_ethereum.svg",
                  width: 25.w,
                  height: 25.h,
                )
              : Container(),
          hasIconOrText == true ? horizontalSpace(5) : Container(),
          Text(
            textMain,
            style: TextStyles.font16WhiteSemiBold,
          ),
          horizontalSpace(5),
          const Icon(
            Icons.arrow_downward_rounded,
            color: ColorsManager.whiteColor,
            size: 30,
          )
        ],
      ),
    );
  }
}
