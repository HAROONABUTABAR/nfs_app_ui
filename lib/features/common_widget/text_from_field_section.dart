import 'package:flutter/material.dart';

import '../../core/theming/colors.dart';
import '../../core/theming/styles.dart';

class TextFromFieldSection extends StatelessWidget {
  const TextFromFieldSection({
    super.key,
    required this.onChanged,
    required this.textHint,
    required this.textLabel,
    required this.controller,
    this.maxLines = 1,
  });
  final void Function(String)? onChanged;
  final String textLabel;
  final String textHint;
  final TextEditingController controller;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        label: Text(textLabel, style: TextStyles.font13BlueRegular),
        fillColor: ColorsManager.secondaryColor,
        hintText: textHint,
        focusColor: ColorsManager.whiteColor,
        hintStyle: TextStyles.font13BlueRegular,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: ColorsManager.darkColor,
            width: 2,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: ColorsManager.darkColor,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: ColorsManager.darkColor,
            width: 2,
          ),
        ),
        filled: true,
      ),
      style: TextStyles.font13BlueRegular,
    );
  }
}
