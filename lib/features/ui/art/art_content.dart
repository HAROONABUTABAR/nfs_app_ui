import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';
import '../search/data/model/featured_collections_medel.dart';
import '../search/widget/featured_collections_section.dart';

class ArtContent extends StatelessWidget {
  const ArtContent({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    List<FeaturedCollectionsModel> featuredCollectionsModel = [
      FeaturedCollectionsModel(
          name: "DourDarcels",
          imageMain: "assets/images/search/imageMain1.png",
          imageSecond: "assets/images/search/imageSecond1.png",
          itemNumber: "10K",
          ownersNumber: "4,93K"),
      FeaturedCollectionsModel(
          name: "CyberBrokersDeployer",
          imageMain: "assets/images/search/imageMain2.png",
          imageSecond: "assets/images/search/imageSecond2.png",
          itemNumber: "10K",
          ownersNumber: "4,93K"),
      FeaturedCollectionsModel(
          name: "BoredApeYachtClub",
          imageMain: "assets/images/search/imageMain3.png",
          imageSecond: "assets/images/search/imageSecond3.png",
          itemNumber: "10K",
          ownersNumber: "4,93K"),
      FeaturedCollectionsModel(
          name: "Azuki",
          imageMain: "assets/images/search/imageMain4.png",
          imageSecond: "assets/images/search/imageSecond4.png",
          itemNumber: "10K",
          ownersNumber: "4,93K"),
      FeaturedCollectionsModel(
          name: "BoredApeYachtClub",
          imageMain: "assets/images/search/imageMain3.png",
          imageSecond: "assets/images/search/imageSecond3.png",
          itemNumber: "10K",
          ownersNumber: "4,93K"),
      FeaturedCollectionsModel(
          name: "Azuki",
          imageMain: "assets/images/search/imageMain4.png",
          imageSecond: "assets/images/search/imageSecond4.png",
          itemNumber: "10K",
          ownersNumber: "4,93K"),
    ];
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Art",
                style: TextStyles.font32BlueBold,
              ),
              verticalSpace(10),
              Text(
                "Karafuru is home to 5,555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.",
                style: TextStyles.font13DarkBlueRegular.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        verticalSpace(24),
        FeaturedCollectionsSection(
          featuredCollectionsModel: featuredCollectionsModel,
        ),
      ],
    );
  }
}
