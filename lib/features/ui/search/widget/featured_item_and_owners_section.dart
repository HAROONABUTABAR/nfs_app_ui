
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';
import '../data/model/featured_collections_medel.dart';

class FeaturedItemAndOwnersSection extends StatelessWidget {
  const FeaturedItemAndOwnersSection({
    super.key,
    required this.featuredCollectionsModel,
  });

  final FeaturedCollectionsModel featuredCollectionsModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Items",
              style: TextStyles.font13BlueRegular.copyWith(
                fontWeight: FontWeight.w200,
                fontSize: 13,
              ),
            ),
            Text(
              featuredCollectionsModel.itemNumber,
              style: TextStyles.font13BlueRegular,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Owners",
              style: TextStyles.font13BlueRegular.copyWith(
                fontWeight: FontWeight.w200,
                fontSize: 13,
              ),
            ),
            Text(
              featuredCollectionsModel.ownersNumber,
              style: TextStyles.font13BlueRegular,
            ),
          ],
        ),
      ],
    );
  }
}

