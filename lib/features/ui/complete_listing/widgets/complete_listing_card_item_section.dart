import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CompleteListingCardItemSection extends StatelessWidget {
  const CompleteListingCardItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorsManager.secondaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/images/nts_list_images/11.png",
                    width: 100.w,
                    height: 100.h,
                  ),
                ),
                horizontalSpace(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kunjek",
                      style: TextStyles.font13BlueRegular.copyWith(
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Young Ape",
                      style: TextStyles.font16WhiteSemiBold,
                    ),
                  ],
                ),
                horizontalSpace(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Price",
                      style: TextStyles.font13BlueRegular.copyWith(
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/home_image/logos_ethereum.svg",
                        ),
                        horizontalSpace(5),
                        Text(
                          "0,0002",
                          style: TextStyles.font15DarkBlueMedium,
                        ),
                      ],
                    ),
                    Text(
                      "Quantity: 1",
                      style: TextStyles.font13BlueRegular.copyWith(
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          verticalSpace(10),
          Text(
            "Your wallet balance is below 0.05 ETH. The next stops require small transaction fees, so you may have to deposit additional funds to complete them.",
            style: TextStyles.font13BlueRegular.copyWith(
              fontWeight: FontWeight.w300,
              fontSize: 12,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
