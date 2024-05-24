

import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../data/models/model_lest_trending.dart';

class ImageWithIndexTrendingSection extends StatelessWidget {
  const ImageWithIndexTrendingSection({
    super.key,
    required this.trendingCollectinsModel,
  });

  final TrendingCollectinsModel trendingCollectinsModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          trendingCollectinsModel.mainImage,
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsManager.whiteColor,
            ),
            child: Text(
              trendingCollectinsModel.indexImage.toString(),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
