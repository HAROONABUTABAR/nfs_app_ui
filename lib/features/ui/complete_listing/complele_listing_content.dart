import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/common_widget/button_action.dart';
import 'package:custom_widget/features/ui/upload_items_done/upload_item_done.dart';
import 'package:flutter/material.dart';
import 'widgets/approve_token_section.dart';
import 'widgets/complete_listing_card_item_section.dart';
import 'widgets/complete_listing_stepper_section.dart';

class CompleteListingContent extends StatelessWidget {
  const CompleteListingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        verticalSpace(20),
        const CompleteListingStepperSction(),
        verticalSpace(20),
        const ApproveTokenSection(),
        verticalSpace(20),
        const CompleteListingCardItemSection(),
        verticalSpace(60),
        ActionButtonSection(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const UploadItemDoneView()));
          },
          textButton: "Complete Listing",
          colorButton: ColorsManager.primayColor,
        ),
      ],
    );
  }
}
