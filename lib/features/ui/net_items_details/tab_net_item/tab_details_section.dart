import 'package:custom_widget/core/theming/styles.dart';
import 'package:custom_widget/features/ui/net_items_details/data/model/collection_details_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../core/helpers/spacing.dart';
import 'widgets_tab_details/card_more_from_this_collection_section.dart';
import 'widgets_tab_details/drop_dowan_section.dart';
import 'widgets_tab_details/first_card_section.dart';

class TabDetailsSection extends StatelessWidget {
  const TabDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CollectionDetailsModel> collectionDetailsModel = [
      CollectionDetailsModel(
        name: "Karafuru",
        userName: "Otan #2622",
        like: "19",
        imageUrl: "assets/images/net_images/collectionImage1.png",
      ),
      CollectionDetailsModel(
        name: "Karafuru",
        userName: "Kuyaku #315",
        like: "18",
        imageUrl: "assets/images/net_images/collectionImage2.png",
      ),
      CollectionDetailsModel(
        name: "Karafuru",
        userName: "Kiba #5395",
        like: "5",
        imageUrl: "assets/images/net_images/collectionImgae3.png",
      ),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          verticalSpace(20),
          const FirstCardSection(),
          verticalSpace(15),
          const DropDowanSection(
            titleButton: "About Collection",
          ),
          verticalSpace(15),
          const DropDowanSection(
            titleButton: "Properties",
          ),
          verticalSpace(15),
          const DropDowanSection(
            titleButton: "Details",
          ),
          verticalSpace(15),
          const DropDowanSection(
            titleButton: "Price History",
          ),
          verticalSpace(15),
          Text(
            "More from this collection",
            style: TextStyles.font16WhiteSemiBold,
          ),
          verticalSpace(15),
          CardMoreFromThisCollectionSection(
              collectionDetailsModel: collectionDetailsModel),
        ],
      ),
    );
  }
}
