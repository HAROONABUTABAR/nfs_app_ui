
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class TabProfileSection extends StatelessWidget {
  const TabProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      dividerColor: ColorsManager.grayColor,
      labelStyle: TextStyles.font14LightGrayRegular,
      isScrollable: true,
      indicatorColor: ColorsManager.primayColor,
      labelColor: ColorsManager.whiteColor,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      tabs: const [
        Text("Collected"),
        Text("Created"),
        Text("Activity"),
        Text("Favorited"),
        Text("Offers Made"),
        Text("Offers Received"),
      ],
    );
  }
}

