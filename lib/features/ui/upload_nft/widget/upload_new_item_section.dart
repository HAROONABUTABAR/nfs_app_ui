import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class UploadNewItemSection extends StatelessWidget {
  const UploadNewItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Upload new items*",
            style: TextStyles.font16WhiteSemiBold,
          ),
          verticalSpace(10),
          Text(
            "File types supported: JPG, PNG, GIF, SVG, MP4, WEBM, MP3, WAV, OGG, GLB, GLTF, Max size: 40 MB",
            style: TextStyles.font13BlueRegular.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w200,
            ),
          ),
          verticalSpace(15),
          DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(10),
            padding: const EdgeInsets.all(6),
            color: ColorsManager.whiteColor,
            child: ClipRRect(
              child: SizedBox(
                height: 200,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/icons_cloud_upload.svg"),
                    verticalSpace(10),
                    Text(
                      "Upload your NFT",
                      style: TextStyles.font15DarkBlueMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
