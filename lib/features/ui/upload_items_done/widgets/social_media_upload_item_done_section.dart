import 'package:custom_widget/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';

class SocialMediaUploadItemDoneSection extends StatelessWidget {
  const SocialMediaUploadItemDoneSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        children: [
          Text(
            "Share",
            style: TextStyles.font16WhiteMedium,
            textAlign: TextAlign.center,
          ),
          verticalSpace(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "assets/icons/instaIcon.svg",
                width: 40,
                height: 40,
              ),
              SvgPicture.asset(
                "assets/icons/xIcon.svg",
                width: 40,
                height: 40,
              ),
              SvgPicture.asset(
                "assets/icons/webIcon.svg",
                width: 40,
                height: 40,
              ),
              SvgPicture.asset(
                "assets/icons/bi_line.svg",
                width: 40,
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
