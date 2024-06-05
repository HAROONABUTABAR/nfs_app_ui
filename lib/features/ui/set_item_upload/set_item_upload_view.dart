import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/core/theming/styles.dart';
import 'package:custom_widget/features/ui/set_item_upload/set_item_upload_content.dart';
import 'package:flutter/material.dart';

class SetUploadItemView extends StatelessWidget {
  const SetUploadItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.darkColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: ColorsManager.whiteColor,
          ),
        ),
        title: Text(
          "Set Item",
          style: TextStyles.font16WhiteMedium,
        ),
        centerTitle: true,
      ),
      body: const SetUploadItemContent(),
    );
  }
}
