import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
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
                padding: EdgeInsets.only(bottom: 30.h),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Material(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.transparent,
                    elevation: 10,
                    child: Container(
                      width: double.infinity,
                      height: 80,
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                        color: ColorsManager.secondaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButtonNavBar(
                            iconData: IconlyLight.home,
                            onTap: () {
                              bloc.add(BottomNavBarChangeIndexEvent(index: 0));
                            },
                            index: 0,
                            currentIndex: bloc.currentIndex,
                          ),
                          IconButtonNavBar(
                            iconData: IconlyLight.search,
                            onTap: () {
                              bloc.add(BottomNavBarChangeIndexEvent(index: 1));
                            },
                            index: 1,
                            currentIndex: bloc.currentIndex,
                          ),
                          IconButtonNavBar(
                            iconData: IconlyLight.shield_fail,
                            onTap: () {
                              bloc.add(BottomNavBarChangeIndexEvent(index: 2));
                            },
                            index: 2,
                            currentIndex: bloc.currentIndex,
                          ),
                          IconButtonNavBar(
                            iconData: IconlyLight.profile,
                            onTap: () {
                              bloc.add(BottomNavBarChangeIndexEvent(index: 3));
                            },
                            index: 3,
                            currentIndex: bloc.currentIndex,
                          ),
                          IconButtonNavBar(
                            iconData: IconlyLight.setting,
                            onTap: () {
                              bloc.add(BottomNavBarChangeIndexEvent(index: 4));
                            },
                            index: 4,
                            currentIndex: bloc.currentIndex,
                          ),
                          IconButtonNavBar(
                            iconData: IconlyLight.bookmark,
                            onTap: () {
                              bloc.add(BottomNavBarChangeIndexEvent(index: 5));
                            },
                            index: 5,
                            currentIndex: bloc.currentIndex,
                          ),
                        ],
                      ),
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
      onHover: (value) {},
    );
  }
}

class IconButtonNavBar extends StatelessWidget {
  const IconButtonNavBar(
      {super.key,
      required this.onTap,
      required this.iconData,
      required this.index,
      required this.currentIndex});
  final void Function() onTap;
  final IconData iconData;
  final int index;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        iconData,
        color: index == currentIndex
            ? ColorsManager.primayColor
            : ColorsManager.whiteColor,
        size: 30,
      ),
    );
  }
}
