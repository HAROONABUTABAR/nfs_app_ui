import 'package:flutter/widgets.dart';

import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';

class ActionButtonSection extends StatelessWidget {
  const ActionButtonSection({
    super.key,
    required this.onTap,
    required this.textButton,
    this.width = 340,
    this.height = 49,
    required this.colorButton,
  });
  final void Function()? onTap;
  final String textButton;
  final double? width;
  final double? height;
  final Color colorButton;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: colorButton,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              textButton,
              style: TextStyles.font13DarkBlueRegular,
            ),
          ),
        ),
      ),
    );
  }
}
