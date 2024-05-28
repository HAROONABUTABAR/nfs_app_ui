import 'package:custom_widget/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../home_page/data/models/prflie_slider_model.dart';
import 'net_items_content.dart';

class NetItemView extends StatelessWidget {
  const NetItemView({super.key, required this.model});
  final ProfileModel model;
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
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsManager.secondaryColor,
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.filter_alt_rounded,
                  color: ColorsManager.whiteColor,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsManager.secondaryColor,
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: ColorsManager.whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
      body:  NetItemViewContent(model: model),
    );
  }
}
