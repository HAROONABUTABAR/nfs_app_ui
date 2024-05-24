import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../data/models/model_lest_trending.dart';

class EthWithSubEthTrendingSection extends StatelessWidget {
  const EthWithSubEthTrendingSection({
    super.key,
    required this.trendingCollectinsModel,
  });

  final TrendingCollectinsModel trendingCollectinsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              trendingCollectinsModel.ethLogo,
            ),
            horizontalSpace(4),
            Text(
              trendingCollectinsModel.mainEth,
              style: TextStyles.font13BlueSemiBold,
            ),
          ],
        ),
        Text(
          trendingCollectinsModel.subEth,
          style: TextStyles.font13BlueRegular.copyWith(
            color: trendingCollectinsModel.color,
          ),
        )
      ],
    );
  }
}
