import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';
import '../home_page/data/models/prflie_slider_model.dart';

class NetItemViewContent extends StatelessWidget {
  const NetItemViewContent({super.key, required this.model});
  final ProfileModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          verticalSpace(20),
          Image.asset(
            model.mainImage,
            fit: BoxFit.cover,
          ),
          verticalSpace(20),
          Text(
            model.nameProfile,
            style: TextStyles.font16WhiteSemiBold,
          ),
          verticalSpace(10),
          Text(
            model.nameMain,
            style: TextStyles.font24BlueBold,
          ),
          verticalSpace(10),
          const Row(
            children: [
              Row(
                children: [
                  CircleAvatar(),
                  // Text(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
