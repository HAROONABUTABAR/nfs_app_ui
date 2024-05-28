import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'activity_widget/activity_section.dart';
import 'widgets_rankings/ranking_stats_section.dart';

class StatsViewContent extends StatelessWidget {
  const StatsViewContent({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // The number of tabs
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          verticalSpace(24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Stats",
              style: TextStyles.font32BlueBold,
            ),
          ),
          verticalSpace(24),
          TabBar(
            labelPadding: const EdgeInsets.symmetric(horizontal: 20),
            dividerColor: ColorsManager.grayColor,
            dividerHeight: 2,
            labelColor: ColorsManager.primayColor,
            indicatorColor: ColorsManager.primayColor,
            unselectedLabelColor: ColorsManager.grayColor,
            labelStyle: TextStyles.font24BlackBold,
            tabs: const [
              Tab(text: "Rankings"), // Ensure unique tab labels
              Tab(text: "Activity"),
            ],
          ),
          SizedBox(
            height: 500.h,
            child: const TabBarView(
              children: [
                RankingsStatsSection(), // Unique content in TabBarView
                ActivityStatsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
