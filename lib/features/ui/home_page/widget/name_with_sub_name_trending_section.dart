import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../data/models/model_lest_trending.dart';

class NameWithSubNameTrendingSection extends StatelessWidget {
  const NameWithSubNameTrendingSection({
    super.key,
    required this.trendingCollectinsModel,
  });

  final TrendingCollectinsModel trendingCollectinsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          trendingCollectinsModel.mainName,
          style: TextStyles.font13BlueRegular.copyWith(
            color: ColorsManager.whiteColor,
          ),
          textAlign: TextAlign.start,
        ),
        Text(
          trendingCollectinsModel.subName,
          style: TextStyles.font13BlueRegular
              .copyWith(color: ColorsManager.grayColor, fontSize: 10),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
