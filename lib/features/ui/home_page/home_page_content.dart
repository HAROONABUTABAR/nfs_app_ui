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
    List<String> caregoiesList = ["Trending", "Art", "Gaming"];
    return ListView(
      children: [
        verticalSpace(20),
        const BalanceCardSection(),
        verticalSpace(40),
        SizedBox(
          height: 50,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: caregoiesList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Container(
                    height: 17,
                    width: 130,
                    decoration: BoxDecoration(
                      color: index == 0
                          ? ColorsManager.primayColor
                          : ColorsManager.secondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        caregoiesList[index],
                        style: TextStyles.font14LightGrayRegular.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
