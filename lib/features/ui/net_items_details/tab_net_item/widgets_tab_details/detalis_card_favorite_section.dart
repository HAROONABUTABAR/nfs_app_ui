import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';

class DetalisCardFavoriteSection extends StatelessWidget {
  const DetalisCardFavoriteSection({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyles.font13BlueRegular
              .copyWith(fontWeight: FontWeight.w200),
        ),
        verticalSpace(5),
        Text(
          subtitle,
          style: TextStyles.font13BlueRegular,
        ),
      ],
    );
  }
}
