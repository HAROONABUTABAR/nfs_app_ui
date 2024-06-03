
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/webIcon.svg",
                width: 25,
              ),
              horizontalSpace(10),
              SvgPicture.asset(
                "assets/icons/instaIcon.svg",
                width: 25,
              ),
              horizontalSpace(10),
              SvgPicture.asset(
                "assets/icons/xIcon.svg",
                width: 25,
              ),
              horizontalSpace(10),
              SvgPicture.asset(
                "assets/icons/dis.svg",
                width: 25,
              ),
            ],
          ),
        ),
      ],
    );
  }
}


