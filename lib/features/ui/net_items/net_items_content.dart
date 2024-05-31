import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../core/theming/styles.dart';
import '../home_page/data/models/prflie_slider_model.dart';
import 'widget/create_by_dev_net_items_section.dart';
import 'widget/current_bid_and_end_in_section.dart';
import 'widget/net_item_nav_bar_section.dart';

class NetItemViewContent extends StatelessWidget {
  const NetItemViewContent({super.key, required this.model});
  final ProfileModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView(
              children: [
                verticalSpace(15),
                Image.asset(
                  model.mainImage,
                  fit: BoxFit.cover,
                ),
                verticalSpace(10),
                Text(
                  model.nameProfile,
                  style: TextStyles.font16WhiteSemiBold,
                ),
                verticalSpace(6),
                Text(
                  model.nameMain,
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(6),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CreateByDevNetItemsSection(
                      name: "KarafuruDeployer",
                      image: "assets/images/net_images/nts_item1.png",
                    ),
                    CreateByDevNetItemsSection(
                      name: "Wakanabe420",
                      image: "assets/images/net_images/nts_item2.png",
                    ),
                  ],
                ),
                verticalSpace(10),
                Text(
                  "Karafuru is home to 5,555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.",
                  style: TextStyles.font13BlueRegular.copyWith(
                    fontSize: 11,
                  ),
                ),
                verticalSpace(10),
                CurrentBidAndEndsInSection(model: model),
              ],
            ),
          ),
        ),
        NetItemNavBarSection(model: model),
      ],
    );
  }
}
