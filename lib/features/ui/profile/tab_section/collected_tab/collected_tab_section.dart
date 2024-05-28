import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../common_widget/button_action.dart';
import '../../../stats/widget/button_down_categories_section.dart';
import '../../data/collected_model.dart';
import 'grid_collected_section.dart';

class CollectedTabSection extends StatelessWidget {
  const CollectedTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<CollectedModel> collectedModel = [
      CollectedModel(
        images: "assets/images/profile_setup_image/image2c.png",
        nameSub: "The Invitation",
        nameMain: "Invitation-My Story",
        like: "192",
        price: "0,25 ETH",
      ),
      CollectedModel(
        images: "assets/images/profile_setup_image/image3c.png",
        nameSub: "OctoHeadz",
        nameMain: "OctoHedz 7416",
        like: "341",
        price: "0,25 ETH",
      ),
    ];
    return Column(
      children: [
        verticalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ButtonDownCategoriesSection(text: "All Categories"),
            ActionButtonSection(
              width: 100,
              height: 35,
              onTap: () {},
              textButton: "Upload",
              colorButton: ColorsManager.primayColor,
            )
          ],
        ),
        verticalSpace(15),
        Expanded(
          child: GridCollectedSection(collectedModel: collectedModel),
        ),
      ],
    );
  }
}
