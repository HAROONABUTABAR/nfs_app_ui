
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class SocialMediaProfileSection extends StatelessWidget {
  const SocialMediaProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "assets/icons/copy_icon.svg",
                width: 20,
                height: 40,
              ),
              horizontalSpace(10),
              Text(
                "0x841a...8a57",
                style: TextStyles.font13GrayRegular,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                "assets/icons/webIcon.svg",
              ),
              horizontalSpace(10),
              SvgPicture.asset(
                "assets/icons/instaIcon.svg",
              ),
              horizontalSpace(10),
              SvgPicture.asset(
                "assets/icons/xIcon.svg",
              ),
            ],
          ),
        ],
      ),
    );
  }
}


