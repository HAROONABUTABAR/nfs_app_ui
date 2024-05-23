import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class BalanceCardSection extends StatelessWidget {
  const BalanceCardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: 45,
                width: 130,
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: ColorsManager.whiteColor,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    horizontalSpace(15),
                    SvgPicture.asset(
                      "assets/images/home_image/logos_ethereum.svg",
                    ),
                    horizontalSpace(12),
                    Text(
                      "26,031",
                      style: TextStyles.font32BlueBold.copyWith(fontSize: 17),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -15,
                left: 20,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  color: ColorsManager.darkColor,
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 8,
                  ),
                  child: Text(
                    "Balance",
                    style: TextStyles.font13BlueRegular.copyWith(
                      fontSize: 19,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          // SvgPicture.asset("assets/images/home_image/home_page_image.svg"),
        ],
      ),
    );
  }
}
