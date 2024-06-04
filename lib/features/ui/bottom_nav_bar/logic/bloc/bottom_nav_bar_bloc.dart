import 'dart:async';
import 'package:custom_widget/features/ui/home_page/home_view.dart';
import 'package:custom_widget/features/ui/nts_discovrd/nts_discovred_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../profile/profile_view.dart';
import '../../../search/search_view.dart';
import '../../../setting_app/setting_app_view.dart';
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
    const SettingAppView(),
    const NtsDiscovredView()
    // const SettingsView(),
  ];

  FutureOr<void> _bottomNavBarChangeIndex(
      BottomNavBarChangeIndexEvent event, Emitter<BottomNavBarState> emit) {
    currentIndex = event.index;
    emit(ChangeIndexSuccesState());
  }
}
