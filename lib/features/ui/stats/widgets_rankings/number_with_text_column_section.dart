import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class NumberWithTextColumnSection extends StatelessWidget {
  const NumberWithTextColumnSection({
    super.key,
    required this.textMain,
    required this.textSecondary,
  });
  final String textMain;
  final String textSecondary;
  @override
  Widget build(BuildContext context) {
    return 
    
    Column(
      children: [
        Text(
          textMain,
          style: TextStyles.font13BlueRegular
              .copyWith(color: ColorsManager.grayColor),
        ),
        Text(
          textSecondary,
          style: TextStyles.font13BlueRegular,
        ),
      ],
    );
 
 
  }
}
