import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';

class HeyWelcomeContent extends StatelessWidget {
  const HeyWelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/hey_welcome_image/pattern.png"),
          verticalSpace(50),
          Text(
            "Hey! Welcome",
            style: TextStyles.font32BlueBold,
          ),
          verticalSpace(10),
          Text(
            "Create and Sell your NFT in 1 seconds",
            style: TextStyles.font16WhiteSemiBold,
          ),
        ],
      ),
    );
  }
}
