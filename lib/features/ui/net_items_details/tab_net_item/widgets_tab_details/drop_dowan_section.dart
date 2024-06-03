import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class DropDowanSection extends StatelessWidget {
  const DropDowanSection({
    super.key,
    required this.titleButton,
  });
  final String titleButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: ColorsManager.secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleButton,
            style: TextStyles.font13BlueRegular,
          ),
          const Icon(
            Icons.arrow_downward_outlined,
            color: ColorsManager.whiteColor,
          ),
        ],
      ),
    );
  }
}
