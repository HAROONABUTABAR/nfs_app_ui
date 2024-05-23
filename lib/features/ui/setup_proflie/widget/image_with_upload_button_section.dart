import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ImageWithButtonUploadSection extends StatelessWidget {
  const ImageWithButtonUploadSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 70,
          backgroundImage:
              AssetImage("assets/images/profile_setup_image/profileSetup.png"),
        ),
        horizontalSpace(25),
        Container(
          width: 160,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(
                color: ColorsManager.whiteColor,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              "Upload Profile",
              style: TextStyles.font15DarkBlueMedium,
            ),
          ),
        ),
      ],
    );
  }
}
