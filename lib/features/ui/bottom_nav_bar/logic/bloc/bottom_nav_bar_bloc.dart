// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/ui/home_page/home_view.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../profile/profile_view.dart';
import '../../../search/search_view.dart';
import '../../../stats/stats_view.dart';

part 'bottom_nav_bar_event.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {
  BottomNavBarBloc() : super(BottomNavBarInitial()) {
    on<BottomNavBarEvent>((event, emit) {});
    on<BottomNavBarChangeIndexEvent>(_bottomNavBarChangeIndex);
  }

  int currentIndex = 0;

  List<Widget> screens = [
    const HomePageView(),
    const SearchView(),
    const StatsView(),
    const ProfileView(),

    // const SettingsView(),
  ];

  List<FlashyTabBarItem> items = [
    FlashyTabBarItem(
      activeColor: ColorsManager.primayColor,
      inactiveColor: ColorsManager.whiteColor,
      icon: SvgPicture.asset(
        "assets/icons/icon_home.svg",
        color: ColorsManager.whiteColor,
      ),
      title: const Text('Home'),
    ),
    FlashyTabBarItem(
      activeColor: ColorsManager.primayColor,
      inactiveColor: ColorsManager.whiteColor,
      icon: SvgPicture.asset(
        "assets/icons/icon_search.svg",
        color: ColorsManager.whiteColor,
      ),
      title: const Text('Search'),
    ),
    FlashyTabBarItem(
      activeColor: ColorsManager.primayColor,
      inactiveColor: ColorsManager.whiteColor,
      icon: SvgPicture.asset(
        "assets/icons/icon_stats.svg",
        color: ColorsManager.whiteColor,
      ),
      title: const Text('Stats'),
    ),
    FlashyTabBarItem(
      activeColor: ColorsManager.primayColor,
      inactiveColor: ColorsManager.whiteColor,
      icon: SvgPicture.asset(
        "assets/icons/icon_profile.svg",
        color: ColorsManager.whiteColor,
      ),
      title: const Text('Profile'),
    ),
  ];

  FutureOr<void> _bottomNavBarChangeIndex(
      BottomNavBarChangeIndexEvent event, Emitter<BottomNavBarState> emit) {
    currentIndex = event.index;
    emit(ChangeIndexSuccesState());
  }
}
