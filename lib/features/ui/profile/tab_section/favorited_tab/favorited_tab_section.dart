import 'package:custom_widget/features/ui/profile/data/favorited_model.dart';
import 'package:custom_widget/features/ui/profile/tab_section/favorited_tab/grid_favorited_section.dart';
import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacing.dart';

class FavoritedTabSection extends StatelessWidget {
  const FavoritedTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<FavoritedModel> favoritedModel = [
      FavoritedModel(
        images: "assets/images/profile_setup_image/fav1.png",
        nameSub: "Azuki",
        nameMain: "Azuki #4092",
        like: "320",
        price: "2,75 ETH",
      ),
      FavoritedModel(
        images: "assets/images/profile_setup_image/fva2.png",
        nameSub: "Weird Potato#",
        nameMain: "Young Lex",
        like: "213",
        price: "2,00 ETH",
      ),
    ];
    return Column(
      children: [
        verticalSpace(15),
        Expanded(
          child: GridFavoritedSection(favoritedModel: favoritedModel),
        ),
      ],
    );
  }
}
