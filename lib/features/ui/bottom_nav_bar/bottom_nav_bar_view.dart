import 'dart:developer';

import 'package:custom_widget/core/theming/colors.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/bloc/bottom_nav_bar_bloc.dart';

class BottomNavBarView extends StatelessWidget {
  const BottomNavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<BottomNavBarBloc>();
    return BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
      builder: (context, state) {
        return Scaffold(
          body: bloc.screens[bloc.currentIndex],
          bottomNavigationBar: FlashyTabBar(
            height: 55,
            backgroundColor: ColorsManager.secondaryColor,
            selectedIndex: bloc.currentIndex,
            showElevation: true,
            onItemSelected: (index) {
              log("ChangeIndex $index");
              bloc.add(BottomNavBarChangeIndexEvent(index: index));
            },
            items: bloc.items,
          ),
        );
      },
    );
  }
}
