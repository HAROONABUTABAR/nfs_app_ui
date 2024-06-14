
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class TitleTextUploadItemSection extends StatelessWidget {
  const TitleTextUploadItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hurrah",
          style: TextStyles.font32BlueBold,
          textAlign: TextAlign.center,
        ),
        verticalSpace(10),
        Text(
          "Your NFT Published",
          style: TextStyles.font16WhiteMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
