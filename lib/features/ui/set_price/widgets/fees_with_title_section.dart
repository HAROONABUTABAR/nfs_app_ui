import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class FeesWithTitleSection extends StatelessWidget {
  const FeesWithTitleSection({
    super.key,
    required this.leftString,
    required this.rightString,
  });
  final String leftString;
  final String rightString;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftString,
          style: TextStyles.font14DarkBlueMedium.copyWith(
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          rightString,
          style: TextStyles.font14DarkBlueMedium.copyWith(
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
