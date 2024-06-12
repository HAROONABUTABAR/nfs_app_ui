import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SelectBlockchainSetPriceSection extends StatelessWidget {
  const SelectBlockchainSetPriceSection({super.key, required this.select});

  final String select;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: ColorsManager.secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Text(
              select,
              style: TextStyles.font14GrayRegular.copyWith(
                fontWeight: FontWeight.w200,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_downward_outlined,
              color: ColorsManager.whiteColor,
            )
          ],
        ),
      ),
    );
  }
}
