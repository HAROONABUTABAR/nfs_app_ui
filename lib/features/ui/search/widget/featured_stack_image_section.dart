import 'package:flutter/material.dart';

import '../data/model/featured_collections_medel.dart';

class FeaturedStackImageSection extends StatelessWidget {
  const FeaturedStackImageSection({
    super.key,
    required this.featuredCollectionsModel,
  });

  final FeaturedCollectionsModel featuredCollectionsModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          featuredCollectionsModel.imageMain,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: -30,
          left: 50,
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
              featuredCollectionsModel.imageSecond,
            ),
          ),
        )
      ],
    );
  }
}
