import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/features/ui/stats/activity_widget/activity_section.dart';
import 'package:flutter/material.dart';
import '../../../core/theming/styles.dart';
import 'tab_section/collected_tab/collected_tab_section.dart';
import 'tab_section/favorited_tab/favorited_tab_section.dart';
import 'tab_section/offer_received_tab/offers_received_section.dart';
import 'tab_section/offers_made/offers_made_section.dart';
import 'tab_section/tab_profile_section.dart';
import 'widget/edit_profile_button_section.dart';
import 'widget/like_item_total_view_section.dart';
import 'widget/sell_profile_section.dart';
import 'widget/social_media_profile_section.dart';

class ProfileViewContect extends StatelessWidget {
  const ProfileViewContect({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const EditProfileButtonSection(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "kevin",
              style: TextStyles.font16WhiteSemiBold,
            ),
          ),
          verticalSpace(10),
          const SocialMediaProfileSection(),
          verticalSpace(10),
          const SellProfileSection(),
          verticalSpace(10),
          const LikeItemTotalViewsSection(),
          verticalSpace(10),
          const TabProfileSection(),
          verticalSpace(10),
          const SizedBox(
            height: 280,
            child: TabBarView(
              children: [
                CollectedTabSection(),
                CollectedTabSection(),
                ActivityStatsSection(),
                FavoritedTabSection(),
                OffersMadeSection(),
                OffersReceivedSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
