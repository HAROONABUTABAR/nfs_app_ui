import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../data/models/activity_model.dart';

class ImageWithInfoActivitySection extends StatelessWidget {
  const ImageWithInfoActivitySection({
    super.key,
    required this.activityModel,
  });

  final ActivityModel activityModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(activityModel.image),
        Column(
          children: [
            Text(
              activityModel.name,
              style: TextStyles.font13BlueRegular.copyWith(
                color: ColorsManager.grayColor,
              ),
            ),
            verticalSpace(10),
            Text(
              activityModel.userName,
              style: TextStyles.font13BlueRegular.copyWith(),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Sale",
              style: TextStyles.font13BlueRegular.copyWith(
                color: ColorsManager.successColor,
              ),
            ),
            verticalSpace(10),
            Row(
              children: [
                SvgPicture.asset(activityModel.logo),
                horizontalSpace(2),
                Text(
                  activityModel.sale,
                  style: TextStyles.font13BlueRegular.copyWith(),
                ),
              ],
            ),
            Text(
              activityModel.time,
              style: TextStyles.font13BlueRegular.copyWith(
                color: ColorsManager.grayColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
