// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:custom_widget/features/ui/home_page/logic/bloc/home_main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors.dart';
import 'home_page_content.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    const _offsetToArmed = 220.0;
    return BlocProvider(
      create: (context) => HomeMainBloc(),
      child: CustomRefreshIndicator(
        offsetToArmed: _offsetToArmed,
        onRefresh: () => Future.delayed(const Duration(seconds: 3)),
        child: const Scaffold(
          body: HomePageContent(),
        ),
        builder: (BuildContext context, Widget child,
                IndicatorController controller) =>
            AnimatedBuilder(
          animation: controller,
          child: child,
          builder: (context, child) {
            return Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: _offsetToArmed * controller.value,
                  child: const RiveAnimation.asset(
                    "assets/images/home_image/raster_test.riv",
                    fit: BoxFit.cover,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.0, _offsetToArmed * controller.value),
                  child: controller.isLoading
                      ? const LoadingImageHomeSection()
                      : child,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class LoadingImageHomeSection extends StatelessWidget {
  const LoadingImageHomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 20),
      child: Container(
        height: 490,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorsManager.secondaryColor,
        ),
        child: Column(
          children: [
            verticalSpace(12),
            Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24, right: 24, top: 20),
                  child: SizedBox(
                    width: 340,
                    height: 300,
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
                      ),
                      horizontalSpace(150),
                      //Change This
                    ],
                  ),
                ),
              ],
            ),
            verticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      horizontalSpace(4),
                    ],
                  )
                ],
              ),
            ),
            verticalSpace(35),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [],
                  ),
                ],
              ),
            ),
            verticalSpace(10),
          ],
        ),
      ),
    );
  }
}
