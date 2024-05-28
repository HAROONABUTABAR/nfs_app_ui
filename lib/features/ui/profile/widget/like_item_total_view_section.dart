import 'package:flutter/material.dart';

import 'number_with_text_profile_section.dart';

class LikeItemTotalViewsSection extends StatelessWidget {
  const LikeItemTotalViewsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NumberWithTextProfileSection(
            number: "54",
            text: "Items Total",
          ),
          NumberWithTextProfileSection(
            number: "3,7K",
            text: "Views",
          ),
          NumberWithTextProfileSection(
            number: "1,2K",
            text: "Liked",
          ),
        ],
      ),
    );
  }
}
