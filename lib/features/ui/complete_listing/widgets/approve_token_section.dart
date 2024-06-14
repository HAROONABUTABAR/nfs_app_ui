
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ApproveTokenSection extends StatelessWidget {
  const ApproveTokenSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Approve Token", style: TextStyles.font24BlueBold),
        verticalSpace(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "To get set up for auction listings for the first time, you must approve the taken for trading, which requires a one-time gas fee,",
            style: TextStyles.font13BlueRegular.copyWith(
              fontWeight: FontWeight.w200,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        verticalSpace(10),
        TextButton(
          onPressed: () {},
          child: Text(
            "View on Etherscan",
            style: TextStyles.font13BlueRegular.copyWith(
              color: ColorsManager.primayColor,
            ),
          ),
        )
      ],
    );
  }
}
