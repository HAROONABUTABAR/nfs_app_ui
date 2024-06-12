import 'package:custom_widget/core/theming/colors.dart';
import 'package:flutter/material.dart';

class DivderSection extends StatelessWidget {
  const DivderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            color: ColorsManager.secondaryColor,
            width: 2.0,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
