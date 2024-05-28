import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../stats/activity_widget/image_with_info_activity_section.dart';
import '../../../stats/activity_widget/number_with_name_activity_section.dart';
import '../../../stats/data/models/activity_model.dart';

class OffersMadeSection extends StatelessWidget {
  const OffersMadeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<ActivityModel> offerMade = [
      ActivityModel(
        name: "Mosu #1930",
        image: "assets/images/stats/activity/activity1.png",
        userName: "Mosu #1930",
        usdPrice: "\$153,16",
        quantity: "1",
        from: "aleben92",
        to: "Wavez47",
        logo: "assets/images/stats/activity/logos.svg",
        time: "6 Minutes ago",
        sale: "140",
      ),
    ];
    return ListView.separated(
      separatorBuilder: (context, index) => verticalSpace(24),
      itemCount: offerMade.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Container(
            height: 200,
            padding: const EdgeInsets.symmetric(
              // horizontal: 24,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: ColorsManager.secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ImageWithInfoActivitySection(activityModel: offerMade[index]),
                verticalSpace(24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NumberWithNameActivitySection(
                      name: "USD Price",
                      activityModel: offerMade[index].usdPrice,
                      color: ColorsManager.whiteColor,
                    ),
                    NumberWithNameActivitySection(
                      name: "Quantity",
                      activityModel: offerMade[index].quantity,
                      color: ColorsManager.whiteColor,
                    ),
                    NumberWithNameActivitySection(
                      name: "From",
                      activityModel: offerMade[index].from,
                      color: ColorsManager.primayColor,
                    ),
                    NumberWithNameActivitySection(
                      name: "To",
                      activityModel: offerMade[index].to,
                      color: ColorsManager.primayColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
