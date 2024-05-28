import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../data/models/ranking_model.dart';
import '../widget/button_down_categories_section.dart';
import 'ranks_lis_section.dart';

class RankingsStatsSection extends StatelessWidget {
  const RankingsStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<RankingsModel> rankingModel = [
      RankingsModel(
        number: "01",
        image: "assets/images/stats/rankings/stats_rankings1.png",
        logo: "assets/images/home_image/logos_ethereum.svg",
        name: "Bored Ape",
        owners: "6,38K",
        items: "10K",
        floorPrice: "96,68",
        volume: "24h%",
        volumeChange: "11,3%",
        price: "12339,71",
        priceChange: "202,24%",
      ),
      RankingsModel(
        number: "02",
        image: "assets/images/stats/rankings/status_rankings2.png",
        logo: "assets/images/home_image/logos_ethereum.svg",
        name: "Cryptopunks",
        owners: "3,43K",
        items: "10K",
        floorPrice: "96,68",
        volume: "24h%",
        volumeChange: "11,3%",
        price: "12339,71",
        priceChange: "202,24%",
      ),
      RankingsModel(
        number: "03",
        image: "assets/images/stats/rankings/stats_raking3.png",
        logo: "assets/images/home_image/logos_ethereum.svg",
        name: "Cryptopunks",
        owners: "3,43K",
        items: "10K",
        floorPrice: "96,68",
        volume: "24h%",
        volumeChange: "11,3%",
        price: "12339,71",
        priceChange: "202,24%",
      ),
      RankingsModel(
        number: "04",
        image: "assets/images/stats/rankings/stats_raking3.png",
        logo: "assets/images/home_image/logos_ethereum.svg",
        name: "Meebits",
        owners: "3,43K",
        items: "10K",
        floorPrice: "96,68",
        volume: "24h%",
        volumeChange: "11,3%",
        price: "12339,71",
        priceChange: "202,24%",
      ),
    ];
    return Column(
      children: [
        verticalSpace(20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonDownCategoriesSection(
                text: "All Categories",
              ),
              ButtonDownCategoriesSection(
                text: "All Chains",
              ),
            ],
          ),
        ),
        verticalSpace(20),
        Expanded(
          child: ListView.builder(
            itemCount: rankingModel.length,
            itemBuilder: (context, index) {
              return RanksListSection(
                rankingModel: rankingModel[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
