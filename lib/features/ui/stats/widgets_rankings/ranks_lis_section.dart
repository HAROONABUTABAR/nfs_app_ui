
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../data/models/ranking_model.dart';
import 'number_with_text_column_section.dart';
import 'text_with_image_section.dart';

class RanksListSection extends StatelessWidget {
  const RanksListSection({
    super.key,
    required this.rankingModel,
  });

  final RankingsModel rankingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            decoration: BoxDecoration(
              color: ColorsManager.secondaryColor,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      rankingModel.number,
                      style: TextStyles.font24BlueBold,
                    ),
                    Image.asset(rankingModel.image),
                    Text(
                      rankingModel.name,
                      style: TextStyles.font13BlueRegular,
                    ),
                    SvgPicture.asset(rankingModel.logo),
                    Column(
                      children: [
                        Text(
                          rankingModel.price,
                          style: TextStyles.font13BlueRegular,
                        ),
                        Text(
                          rankingModel.priceChange,
                          style: TextStyles.font13BlueRegular
                              .copyWith(color: ColorsManager.successColor),
                        ),
                      ],
                    ),
                  ],
                ),
                verticalSpace(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NumberWithTextColumnSection(
                      textMain: rankingModel.volume,
                      textSecondary: rankingModel.volumeChange,
                    ),
                    TextWithImageSection(
                      textMain: "Floor Price",
                      logo: rankingModel.logo,
                      textSecondary: rankingModel.floorPrice,
                    ),
                    NumberWithTextColumnSection(
                      textMain: "Owners",
                      textSecondary: rankingModel.owners,
                    ),
                    NumberWithTextColumnSection(
                        textMain: "Items", textSecondary: rankingModel.items),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

