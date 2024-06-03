import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class NameWithDesSection extends StatelessWidget {
  const NameWithDesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Karafuru",
            style: TextStyles.font32BlueBold,
          ),
          Text(
            "Karafuru is home to 5,555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.",
            style: TextStyles.font13BlueRegular.copyWith(
              fontWeight: FontWeight.w200,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
