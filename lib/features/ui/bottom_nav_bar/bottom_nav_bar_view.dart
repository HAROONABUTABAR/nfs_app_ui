import 'dart:developer';

import 'package:custom_widget/core/theming/colors.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';

import 'logic/bloc/bottom_nav_bar_bloc.dart';

class BottomNavBarView extends StatelessWidget {
  const BottomNavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<BottomNavBarBloc>();
    return BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              bloc.screens[bloc.currentIndex],
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.h),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h),
                    margin: EdgeInsets.symmetric(horizontal: 40.w),
                    decoration: BoxDecoration(
                      color: ColorsManager.secondaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RiveButton(
                          bloc: bloc,
                          riveIcon: RiveIcon.home,
                          onTap: () {
                            bloc.add(BottomNavBarChangeIndexEvent(index: 0));
                          },
                          loopAnimation: true,
                        ),
                        RiveButton(
                          bloc: bloc,
                          riveIcon: RiveIcon.search,
                          onTap: () {
                            bloc.add(BottomNavBarChangeIndexEvent(index: 1));
                          },
                          loopAnimation: false,
                        ),
                        RiveButton(
                          bloc: bloc,
                          riveIcon: RiveIcon.device,
                          onTap: () {
                            bloc.add(BottomNavBarChangeIndexEvent(index: 2));
                          },
                          loopAnimation: false,
                        ),
                        RiveButton(
                          bloc: bloc,
                          riveIcon: RiveIcon.profile2,
                          onTap: () {
                            bloc.add(BottomNavBarChangeIndexEvent(index: 3));
                          },
                          loopAnimation: false,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class RiveButton extends StatelessWidget {
  const RiveButton(
      {super.key,
      required this.bloc,
      required this.riveIcon,
      required this.onTap,
      required this.loopAnimation});

  final BottomNavBarBloc bloc;
  final RiveIcon riveIcon;
  final void Function() onTap;
  final bool loopAnimation;
  @override
  Widget build(BuildContext context) {
    return RiveAnimatedIcon(
      riveIcon: riveIcon,
      width: 40,
      height: 40,
      color: ColorsManager.whiteColor,
      loopAnimation: loopAnimation,
      onTap: onTap,
      onHover: (value) {
        
      },
    );
  }
}
