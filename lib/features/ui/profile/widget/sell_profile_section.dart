
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SellProfileSection extends StatelessWidget {
  const SellProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Text(
        "Sell anything",
        style: TextStyles.font13BlueRegular.copyWith(
          color: ColorsManager.whiteColor,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}


