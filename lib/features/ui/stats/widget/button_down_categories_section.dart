import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ButtonDownCategoriesSection extends StatelessWidget {
  const ButtonDownCategoriesSection({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 150,
      decoration: BoxDecoration(
        color: ColorsManager.secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyles.font13BlueRegular,
          ),
          horizontalSpace(10),
          const FaIcon(
            FontAwesomeIcons.chevronDown,
            color: ColorsManager.whiteColor,
            size: 20,
          ),
        ],
      ),
    );
  }
}
