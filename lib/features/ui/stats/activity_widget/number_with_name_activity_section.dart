
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class NumberWithNameActivitySection extends StatelessWidget {
  const NumberWithNameActivitySection({
    super.key,
    required this.activityModel,
    required this.name,
    required this.color,
  });

  final String activityModel;
  final String name;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyles.font13BlueRegular
              .copyWith(color: ColorsManager.grayColor),
        ),
        Text(
          activityModel,
          style: TextStyles.font13BlueRegular.copyWith(
            color: color,
          ),
        ),
      ],
    );
  }
}

