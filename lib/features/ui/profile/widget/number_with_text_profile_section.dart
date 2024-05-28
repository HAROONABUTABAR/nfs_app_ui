
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class NumberWithTextProfileSection extends StatelessWidget {
  const NumberWithTextProfileSection({
    super.key,
    required this.number,
    required this.text,
  });
  final String text;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          number,
          style: TextStyles.font13BlueRegular,
        ),
        horizontalSpace(5),
        Text(
          text,
          style: TextStyles.font13BlueRegular.copyWith(
            fontWeight: FontWeight.w300,
            color: ColorsManager.grayColor,
          ),
        ),
      ],
    );
  }
}


