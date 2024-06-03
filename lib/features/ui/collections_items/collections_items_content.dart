import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/styles.dart';
import 'widget/deailts_collection_section.dart';
import 'widget/name_with_des_section.dart';
import 'widget/social_media_section.dart';

class CollectionItemContent extends StatelessWidget {
  const CollectionItemContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SocialMediaSection(),
        verticalSpace(20),
        const NameWithDesSection(),
        verticalSpace(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            decoration: BoxDecoration(
              color: ColorsManager.secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DeailtsCollectionSection(
                  textMain: "Items",
                  widget: Text(
                    "5,6K",
                    style: TextStyles.font13BlueRegular,
                  ),
                ),
                DeailtsCollectionSection(
                  textMain: "Owners",
                  widget: Text(
                    "3,7K",
                    style: TextStyles.font13BlueRegular,
                  ),
                ),
                DeailtsCollectionSection(
                  textMain: "Floor Price",
                  widget: Row(
                    children: [
                      SvgPicture.asset(
                          "assets/images/home_image/logos_ethereum.svg"),
                      horizontalSpace(6),
                      Text(
                        "2,4",
                        style: TextStyles.font13BlueRegular,
                      ),
                    ],
                  ),
                ),
                DeailtsCollectionSection(
                  textMain: "Volume",
                  widget: Row(
                    children: [
                      SvgPicture.asset(
                          "assets/images/home_image/logos_ethereum.svg"),
                      horizontalSpace(6),
                      Text(
                        "36,3K",
                        style: TextStyles.font13BlueRegular,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

