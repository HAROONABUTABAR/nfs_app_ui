import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../data/models/activity_model.dart';
import '../widget/button_down_categories_section.dart';
import 'image_with_info_activity_section.dart';
import 'number_with_name_activity_section.dart';

class ActivityStatsSection extends StatelessWidget {
  const ActivityStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<ActivityModel> activityModel = [
      ActivityModel(
        name: "Genesis kakira",
        image: "assets/images/stats/activity/activity1.png",
        userName: "Kakira #5233",
        usdPrice: "\$153,16",
        quantity: "1",
        from: "aleben92",
        to: "Wavez47",
        logo: "assets/images/stats/activity/logos.svg",
        time: "6 Minutes ago",
        sale: "140",
      ),
      ActivityModel(
        name: "ZEED Run",
        image: "assets/images/stats/activity/activity2.png",
        userName: "Frosty Glare",
        usdPrice: "\$10,82",
        quantity: "1",
        from: "mystuff",
        to: "patherm",
        logo: "assets/images/home_image/logos_ethereum.svg",
        time: "15 Minutes ago",
        sale: "0,0002",
      ),
    ];
    return Column(
      children: [
        verticalSpace(24),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonDownCategoriesSection(text: "All Event Type"),
            ButtonDownCategoriesSection(text: "All Chains"),
          ],
        ),
        verticalSpace(24),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => verticalSpace(24),
            itemCount: activityModel.length,
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
                      ImageWithInfoActivitySection(
                          activityModel: activityModel[index]),
                      verticalSpace(24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          NumberWithNameActivitySection(
                            name: "USD Price",
                            activityModel: activityModel[index].usdPrice,
                            color: ColorsManager.whiteColor,
                          ),
                          NumberWithNameActivitySection(
                            name: "Quantity",
                            activityModel: activityModel[index].quantity,
                            color: ColorsManager.whiteColor,
                          ),
                          NumberWithNameActivitySection(
                            name: "From",
                            activityModel: activityModel[index].from,
                            color: ColorsManager.primayColor,
                          ),
                          NumberWithNameActivitySection(
                            name: "To",
                            activityModel: activityModel[index].to,
                            color: ColorsManager.primayColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
