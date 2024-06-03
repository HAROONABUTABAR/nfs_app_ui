import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';
import 'collections_items_content.dart';

class CollectionsItemView extends StatelessWidget {
  const CollectionsItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                height: 170,
                "assets/images/collections_image/collectionItemImage.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                bottom: -80,
                left: 20,
                child: Image.asset(
                  height: 140,
                  width: 130,
                  "assets/images/collections_image/collectionProfile.png",
                ),
              ),
              Positioned(
                top: 60,
                left: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: ColorsManager.darkColor,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 20.0,
                          color: ColorsManager.whiteColor,
                        ),
                      ),
                    ),
                    horizontalSpace(230),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: ColorsManager.darkColor,
                        ),
                        child: const Icon(
                          Icons.share,
                          size: 20.0,
                          color: ColorsManager.whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Expanded(child: CollectionItemContent()),
        ],
      ),
    );
  }
}
