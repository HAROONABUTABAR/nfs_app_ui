import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../data/collected_model.dart';

class GridCollectedSection extends StatelessWidget {
  const GridCollectedSection({
    super.key,
    required this.collectedModel,
  });

  final List<CollectedModel> collectedModel;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        mainAxisSpacing: 10.0, // Space between rows
        crossAxisSpacing: 10.0, // Space between columns
        childAspectRatio: .59, // Aspect ratio of the items
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: ColorsManager.secondaryColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              verticalSpace(20),
              Image.asset(
                collectedModel[index].images,
              ),
              verticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    collectedModel[index].nameSub,
                    style: TextStyles.font13BlueRegular.copyWith(
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/icon_like.svg"),
                      horizontalSpace(5),
                      Text(
                        collectedModel[index].like,
                        style: TextStyles.font13BlueRegular.copyWith(
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              verticalSpace(10),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text(
                    collectedModel[index].nameMain,
                    style: TextStyles.font13BlueRegular,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              verticalSpace(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ColorsManager.primayColor,
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                              "assets/images/home_image/logos_ethereum.svg"),
                          Text(
                            collectedModel[index].price,
                            style: TextStyles.font13BlueRegular,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      itemCount: collectedModel.length, // Total number of items
    );
  }
}
