import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../collections_items/collections_items_view.dart';
import '../../data/model/collection_details_model.dart';

class CardMoreFromThisCollectionSection extends StatelessWidget {
  const CardMoreFromThisCollectionSection({
    super.key,
    required this.collectionDetailsModel,
  });

  final List<CollectionDetailsModel> collectionDetailsModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => horizontalSpace(20),
        scrollDirection: Axis.horizontal,
        itemCount: collectionDetailsModel.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CollectionsItemView())),
          child: Container(
            height: 180,
            width: 160,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
                color: ColorsManager.secondaryColor,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Image.asset(collectionDetailsModel[index].imageUrl),
                verticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      collectionDetailsModel[index].name,
                      style: TextStyles.font13BlueSemiBold.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.heart,
                          color: ColorsManager.grayColor,
                          size: 19,
                        ),
                        horizontalSpace(5),
                        Text(
                          collectionDetailsModel[index].like,
                          style: TextStyles.font13BlueSemiBold.copyWith(
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                verticalSpace(10),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    collectionDetailsModel[index].userName,
                    style: TextStyles.font13BlueSemiBold.copyWith(
                      fontWeight: FontWeight.w200,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
