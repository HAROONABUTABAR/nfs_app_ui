import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../data/model/categories_model.dart';

class CategoriesSearchSection extends StatelessWidget {
  const CategoriesSearchSection({
    super.key,
    required this.categriesModel,
  });

  final List<CategriesModel> categriesModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: TextStyles.font24BlueBold,
          ),
          verticalSpace(22),
          SizedBox(
            height: 100,
            // width: 300,
            child: ListView.separated(
              separatorBuilder: (context, index) => horizontalSpace(10),
              scrollDirection: Axis.horizontal,
              itemCount: categriesModel.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Image.asset(
                      categriesModel[index].imageCategorie,
                    ),
                    Positioned(
                      bottom: 10,
                      left: 15,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          categriesModel[index].categorieName,
                          style: TextStyles.font16WhiteMedium,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
