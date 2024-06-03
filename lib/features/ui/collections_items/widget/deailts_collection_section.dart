
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class DeailtsCollectionSection extends StatelessWidget {
  const DeailtsCollectionSection(
      {super.key, required this.textMain, required this.widget});
  final String textMain;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textMain,
          style: TextStyles.font13BlueRegular.copyWith(
            fontWeight: FontWeight.w200,
          ),
        ),
        verticalSpace(5),
        widget
      ],
    );
  }
}


