import 'package:custom_widget/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors.dart';
import 'widget/balance_card_section.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        verticalSpace(20),
        const BalanceCardSection(),
      ],
    );
  }
}
