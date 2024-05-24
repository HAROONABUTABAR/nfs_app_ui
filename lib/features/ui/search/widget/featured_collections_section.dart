import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../data/model/featured_collections_medel.dart';
import 'featured_item_and_owners_section.dart';
import 'featured_stack_image_section.dart';

class FeaturedCollectionsSection extends StatelessWidget {
  const FeaturedCollectionsSection({
    super.key,
    required this.featuredCollectionsModel,
  });

  final List<FeaturedCollectionsModel> featuredCollectionsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Featured Collections",
            style: TextStyles.font24BlueBold,
          ),
          verticalSpace(22),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              mainAxisSpacing: 10.0, // Space between rows
              crossAxisSpacing: 10.0, // Space between columns
              childAspectRatio: 1.0, // Aspect ratio of the items
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: ColorsManager.secondaryColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    FeaturedStackImageSection(
                      featuredCollectionsModel: featuredCollectionsModel[index],
                    ),
                    verticalSpace(35),
                    Text(
                      featuredCollectionsModel[index].name,
                      style: TextStyles.font13BlueRegular.copyWith(
                        fontWeight: FontWeight.w200,
                        fontSize: 13,
                      ),
                    ),
                    verticalSpace(10),
                    FeaturedItemAndOwnersSection(
                        featuredCollectionsModel:
                            featuredCollectionsModel[index]),
                  ],
                ),
              );
            },
            itemCount: featuredCollectionsModel.length, // Total number of items
          ),
        ],
      ),
    );
  }
}
