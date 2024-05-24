import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../data/models/model_lest_trending.dart';
import 'eth_with_sub_eth_trending_section.dart';
import 'image_with_index_trending_section.dart';
import 'name_with_sub_name_trending_section.dart';

class TrendingWithCollectionSection extends StatelessWidget {
  const TrendingWithCollectionSection({
    super.key,
    required this.trendingCollectinsModel,
  });

  final List<TrendingCollectinsModel> trendingCollectinsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            "Trending Collections",
            style: TextStyles.font24BlackBold.copyWith(
              color: ColorsManager.whiteColor,
              fontSize: 23,
            ),
          ),
        ),
        verticalSpace(20),
        ListView.separated(
          separatorBuilder: (context, index) => verticalSpace(20),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: trendingCollectinsModel.length,
          itemBuilder: (context, index) => Row(
            children: [
              ImageWithIndexTrendingSection(
                trendingCollectinsModel: trendingCollectinsModel[index],
              ),
              horizontalSpace(50),
              NameWithSubNameTrendingSection(
                  trendingCollectinsModel: trendingCollectinsModel[index]),
              const Spacer(),
              EthWithSubEthTrendingSection(
                  trendingCollectinsModel: trendingCollectinsModel[index]),
            ],
          ),
        ),
      ],
    );
  }
}
