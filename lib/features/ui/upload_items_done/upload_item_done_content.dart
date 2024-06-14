import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/common_widget/button_action.dart';
import 'package:flutter/material.dart';
import '../../../core/helpers/spacing.dart';
import '../bottom_nav_bar/bottom_nav_bar_view.dart';
import 'widgets/image_upload_item_done_section.dart';
import 'widgets/social_media_upload_item_done_section.dart';
import 'widgets/title_text_upload_item_section.dart';

class UploadItemDoneContent extends StatelessWidget {
  const UploadItemDoneContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        verticalSpace(100),
        const ImageUploadItemDoneSection(),
        verticalSpace(30),
        const TitleTextUploadItemSection(),
        verticalSpace(20),
        const SocialMediaUploadItemDoneSection(),
        verticalSpace(50),
        ActionButtonSection(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const BottomNavBarView()));
          },
          textButton: "Back To Home",
          colorButton: ColorsManager.primayColor,
        )
      ],
    );
  }
}
