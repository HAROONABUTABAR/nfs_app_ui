import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/ui/home_page/data/models/prflie_slider_model.dart';
import 'package:custom_widget/features/ui/net_items_details/net_items_details_content.dart';
import 'package:flutter/material.dart';

class NetItemsDetailsView extends StatelessWidget {
  const NetItemsDetailsView({super.key, required this.model});
  final ProfileModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: ColorsManager.darkColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: ColorsManager.whiteColor,
          ),
        ),
        title: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            model.mainImage,
            width: 50,
            height: 50,
          ),
        ),
        centerTitle: true,
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
      body: const NetItemsDetailsContent(),
    );
  }
}
