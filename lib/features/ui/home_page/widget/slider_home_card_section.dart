import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../data/models/prflie_slider_model.dart';

class SliderHomeCardSection extends StatelessWidget {
  const SliderHomeCardSection({
    super.key,
    required this.model,
  });

  final ProfileModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Container(
        height: 490,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorsManager.secondaryColor,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
                  child: Image.asset(
                    width: 350,
                    height: 330,
                    fit: BoxFit.cover,
                    model.mainImage,
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorsManager.darkColor.withOpacity(0.5),
                        ),
                        child: Text(
                          "Art",
                          style: TextStyles.font13BlueSemiBold,
                        ),
                      ),
                      horizontalSpace(150),
                      //Change This
                      SvgPicture.asset("assets/images/home_image/heart.svg")
                    ],
                  ),
                ),
              ],
            ),
            verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    model.nameMain,
                    style: TextStyles.font16WhiteMedium,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                          "assets/images/home_image/icon_time.svg"),
                      horizontalSpace(4),
                      Text(
                        model.timeLeft,
                        style: TextStyles.font16WhiteMedium.copyWith(
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            verticalSpace(35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(model.profilePhoto),
                      horizontalSpace(3),
                      Text(
                        model.nameProfile,
                        style: TextStyles.font13BlueRegular,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: ColorsManager.primayColor,
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            "assets/images/home_image/logos_ethereum.svg"),
                        horizontalSpace(8),
                        Text(
                          model.ethNumber,
                          style: TextStyles.font16WhiteMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
