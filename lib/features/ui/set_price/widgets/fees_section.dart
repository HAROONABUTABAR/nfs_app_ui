import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import 'fees_with_title_section.dart';

class FeesSection extends StatelessWidget {
  const FeesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Fees", style: TextStyles.font24BlueBold),
          verticalSpace(10),
          const FeesWithTitleSection(
            leftString: "enefte fee",
            rightString: "2,50%",
          ),
          verticalSpace(5),
          const FeesWithTitleSection(
            leftString: "Customer Royalty",
            rightString: "10,00%",
          ),
        ],
      ),
    );
  }
}
