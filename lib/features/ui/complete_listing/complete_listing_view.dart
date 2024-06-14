


import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/ui/complete_listing/complele_listing_content.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';

class CompleteListingView extends StatelessWidget {
  const CompleteListingView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
          backgroundColor: ColorsManager.darkColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorsManager.whiteColor,
            ),
          ),
          title: Text(
            "Complete Listing",
            style: TextStyles.font15DarkBlueMedium,
          ),
        ),
      body: const CompleteListingContent(),
    );
  }
}
