import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class TotalEarnigsEthSection extends StatelessWidget {
  const TotalEarnigsEthSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total Earnings",
            style: TextStyles.font16WhiteSemiBold,
          ),
          Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                      "assets/images/home_image/logos_ethereum.svg"),
                  horizontalSpace(5),
                  Text(
                    "0,875",
                    style: TextStyles.font16WhiteSemiBold,
                  ),
                ],
              ),
              verticalSpace(5),
              Text(
                "(\$1,759.20)",
                style: TextStyles.font16WhiteSemiBold.copyWith(
                  color: ColorsManager.grayColor,
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
