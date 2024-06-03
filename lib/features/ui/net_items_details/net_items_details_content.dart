import 'package:custom_widget/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/colors.dart';
import 'tab_net_item/tab_details_section.dart';

class NetItemsDetailsContent extends StatelessWidget {
  const NetItemsDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      const Text("Details"),
      const Text("Offers"),
      const Text("Listings"),
      const Text("Item Activity"),
    ];
    return DefaultTabController(
      length: 4,
      child: ListView(
        children: [
          TabBar(
              dividerColor: ColorsManager.grayColor,
              indicatorColor: ColorsManager.primayColor,
              labelStyle: TextStyles.font13BlueRegular,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelStyle: TextStyles.font13DarkBlueMedium.copyWith(
                color: ColorsManager.grayColor,
              ),
              tabs: tabs),
          SizedBox(
            height: 800.h,
            child: TabBarView(
              children: [
                const TabDetailsSection(),
                Container(),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
