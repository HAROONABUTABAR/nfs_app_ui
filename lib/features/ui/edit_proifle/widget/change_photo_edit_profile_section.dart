import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';

class ChangePhotoEditProfileSection extends StatelessWidget {
  const ChangePhotoEditProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Opacity(
          opacity: 0.6,
          child: Image.asset(
            "assets/images/profile_setup_image/profile_image.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        const Positioned(
          top: 80,
          left: 160,
          child: Icon(
            Icons.add_a_photo_outlined,
            size: 50,
            color: ColorsManager.whiteColor,
          ),
        ),
        Positioned(
            bottom: -70,
            left: 20,
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.9,
                  child: Image.asset(
                    "assets/images/profile_setup_image/profileSetup.png",
                  ),
                ),
                const Positioned(
                  top: 45,
                  left: 40,
                  child: Icon(
                    Icons.add_a_photo_outlined,
                    size: 50,
                    color: ColorsManager.whiteColor,
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
