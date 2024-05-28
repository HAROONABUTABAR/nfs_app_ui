import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../stats/activity_widget/number_with_name_activity_section.dart';
import '../../data/offers_received_model.dart';
import 'widgets/image_with_name_with_price_eth_offer_received_section.dart';

class OffersReceivedSection extends StatelessWidget {
  const OffersReceivedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<OffersReceivedModel> offersReceivedModel = [
      OffersReceivedModel(
          images: "assets/images/profile_setup_image/profile_received.png",
          logoEth: "assets/images/home_image/logos_ethereum.svg",
          time: "3 monthsago",
          name: "Go Fishy",
          ethPrice: "0.0012",
          usdPrice: "\$3.09",
          floor: "40%",
          from: "NFTmagicBEER",
          expiration: "3 months"),
    ];
    return ListView.builder(
      itemCount: offersReceivedModel.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: ColorsManager.secondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              ImageWithNameWithPriceEthOfferReceivedSection(
                offersReceivedModel: offersReceivedModel[index],
              ),
              verticalSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NumberWithNameActivitySection(
                    activityModel: offersReceivedModel[index].usdPrice,
                    name: "USD Price",
                    color: ColorsManager.whiteColor,
                  ),
                  NumberWithNameActivitySection(
                    activityModel: offersReceivedModel[index].floor,
                    name: "Floor Diff.",
                    color: ColorsManager.whiteColor,
                  ),
                  NumberWithNameActivitySection(
                    activityModel: offersReceivedModel[index].from,
                    name: "From",
                    color: ColorsManager.whiteColor,
                  ),
                  NumberWithNameActivitySection(
                    activityModel: offersReceivedModel[index].expiration,
                    name: "Expriation",
                    color: ColorsManager.whiteColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
