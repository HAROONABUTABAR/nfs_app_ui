
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class TextWithImageSection extends StatelessWidget {
  const TextWithImageSection({
    super.key,
    required this.textMain,
    required this.textSecondary,
    required this.logo,
  });
  final String textMain;
  final String textSecondary;
  final String logo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textMain,
          style: TextStyles.font13BlueRegular
              .copyWith(color: ColorsManager.grayColor),
        ),
        verticalSpace(5),
        Row(
          children: [
            SvgPicture.asset(logo),
            horizontalSpace(4),
            Text(
              textSecondary,
              style: TextStyles.font13BlueRegular,
            ),
          ],
        ),
      ],
    );
  }
}

