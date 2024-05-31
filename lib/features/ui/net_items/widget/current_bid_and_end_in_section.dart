import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../home_page/data/models/prflie_slider_model.dart';

class CurrentBidAndEndsInSection extends StatelessWidget {
  const CurrentBidAndEndsInSection({
    super.key,
    required this.model,
  });

  final ProfileModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "Current Bid",
              style: TextStyles.font13BlueRegular
                  .copyWith(fontWeight: FontWeight.w200),
            ),
            verticalSpace(8),
            Row(
              children: [
                SvgPicture.asset("assets/images/home_image/logos_ethereum.svg"),
                horizontalSpace(10),
                Text(
                  model.ethNumber,
                  style: TextStyles.font13BlueRegular,
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Ends In",
              style: TextStyles.font13BlueRegular
                  .copyWith(fontWeight: FontWeight.w200),
            ),
            verticalSpace(8),
            Text(
              "June 21, 2022 at 23.00",
              style: TextStyles.font13BlueRegular,
            ),
          ],
        )
      ],
    );
  }
}
