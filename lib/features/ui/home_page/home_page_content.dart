import 'package:custom_widget/core/theming/styles.dart';
import 'package:custom_widget/features/ui/home_page/logic/bloc/home_main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors.dart';
import 'widget/balance_card_section.dart';
import 'widget/categories_home_page_section.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> caregoiesList = ["Trending", "Art", "Gaming"];
    var bloc = context.read<HomeMainBloc>();
    var blocListener = context.watch<HomeMainBloc>();
    return ListView(
      children: [
        verticalSpace(20),
        const BalanceCardSection(),
        verticalSpace(40),
        CategoriesHomePageSection(
            caregoiesList: caregoiesList,
            bloc: bloc,
            blocListener: blocListener),
        verticalSpace(22),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            height: 500,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorsManager.secondaryColor,
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 24, right: 24, top: 20),
                      child: Image.asset(
                        width: double.infinity,
                        fit: BoxFit.cover,
                        "assets/images/home_image/home_main_for_profile.png",
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorsManager.darkColor.withOpacity(0.5),
                            ),
                            child: Text(
                              "Art",
                              style: TextStyles.font13BlueSemiBold,
                            ),
                          ),
                          horizontalSpace(150),
                          //Change This
                          const Icon(Icons.heart_broken)
                        ],
                      ),
                    ),
                  ],
                ),
               verticalSpace(2),
               Row(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
