import 'dart:developer';

import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/core/theming/styles.dart';
import 'package:custom_widget/features/ui/on_boarding/widget/onboarding_contect.dart';
import 'package:flutter/material.dart';

class OnBordangScreen extends StatelessWidget {
  const OnBordangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> onBorading = [
      const OnBordingContant(
        title: "Discover largest\nNFT marketplace",
        subTitle: "Buy and sell digital items",
        image: "assets/images/onbording/onbording1.png",
      ),
      const OnBordingContant(
        title: "Start your own\nNFT gallery now",
        subTitle: "Buy and sell digital items",
        image: "assets/images/onbording/onbording2.png",
      ),
      const OnBordingContant(
        title: "Discovering the\nworld of crypto art",
        subTitle: "Buy and sell digital items",
        image: "assets/images/onbording/onbording3.png",
      ),
      const OnBordingContant(
        title: "Discovering the\nworld of crypto art",
        subTitle: "Buy and sell digital items",
        image: "assets/images/onbording/onbording3.png",
      ),
    ];
    PageController pageController = PageController();
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              log("message: $value");
            },
            controller: pageController,
            itemCount: onBorading.length,
            itemBuilder: (context, index) {
              return onBorading[index];
            },
          ),
          pageController.initialPage == 4
              ? Container()
              : Positioned(
                  bottom: 40,
                  left: 20,
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        color: ColorsManager.primayColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyles.font13DarkBlueRegular,
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
