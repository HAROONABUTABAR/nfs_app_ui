import 'package:flutter/material.dart';
import '../../../../../core/theming/colors.dart';
import 'detalis_card_favorite_section.dart';

class FirstCardSection extends StatelessWidget {
  const FirstCardSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: ColorsManager.secondaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DetalisCardFavoriteSection(
            title: "Favorite",
            subtitle: "337",
          ),
          DetalisCardFavoriteSection(
            title: "Owners",
            subtitle: "1",
          ),
          DetalisCardFavoriteSection(
            title: "Edition",
            subtitle: "1",
          ),
        ],
      ),
    );
  }
}
