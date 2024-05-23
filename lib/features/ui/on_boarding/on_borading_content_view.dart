import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../connect_with_wallet/connect_with_wallet.dart';
import 'logic/bloc/on_boarding_bloc.dart';
import 'widget/onboarding_contect.dart';

class OnBoardingContentScreen extends StatelessWidget {
  const OnBoardingContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> onBorading = [
      const OnBordingContant(
        title: "Discover largest\nNFT marketplace",
        subTitle: "Buy and sell digital items",
        image: "assets/images/onbording/onbording1.png",
        isShowContainer: true,
        isShowImage: true,
      ),
      const OnBordingContant(
        title: "Start your own\nNFT gallery now",
        subTitle: "Buy and sell digital items",
        image: "assets/images/onbording/onbording2.png",
        isShowContainer: true,
        isShowImage: true,
      ),
      const OnBordingContant(
        title: "Discovering the\nworld of crypto art",
        subTitle: "Buy and sell digital items",
        image: "assets/images/onbording/onbording3.png",
        isShowContainer: true,
        isShowImage: true,
      ),
      const OnBordingContant(
        title: "All NFTs are certifiably unique and ownable",
        subTitle:
            "A credible and excellent marketplace for non-fungible token.",
        image: "assets/images/onbording/onbording3.png",
        isShowContainer: false,
        isShowImage: false,
      ),
    ];
    PageController pageController = PageController();
    // pageController.nextPage(duration: duration, curve: curve)
    var bloc = context.read<OnBoardingBloc>();
    var blocListener = context.watch<OnBoardingBloc>();
    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (value) {
            bloc.add(OnBoardingInitialEvent(index: value));
          },
          controller: pageController,
          itemCount: onBorading.length,
          itemBuilder: (context, index) {
            return onBorading[index];
          },
        ),
        blocListener.index == 3
            ? Container()
            : Positioned(
                bottom: 150,
                left: 160,
                child: Center(
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: onBorading.length - 1,
                    axisDirection: Axis.horizontal,
                    effect: const WormEffect(
                      spacing: 8.0,
                      radius: 50.0,
                      strokeWidth: 2,
                      dotColor: ColorsManager.darkColor,
                      activeDotColor: ColorsManager.whiteColor,
                    ),
                  ),
                ),
              ),
        blocListener.index == 3
            ? Positioned(
                bottom: 40,
                left: 20,
                child: Center(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          blocListener.index == 3
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ConnetWithWalletView()))
                              : pageController.animateToPage(bloc.index + 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                        },
                        child: Container(
                          height: 49,
                          width: 270,
                          decoration: BoxDecoration(
                            color: ColorsManager.primayColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Connect with Wallet",
                              style: TextStyles.font13DarkBlueRegular,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          blocListener.index == 3
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ConnetWithWalletView()))
                              : pageController.animateToPage(bloc.index + 1,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn);
                        },
                        child: Container(
                          height: 45,
                          width: 66,
                          decoration: BoxDecoration(
                              color: ColorsManager.darkColor,
                              border: Border.all(
                                color: ColorsManager.whiteColor,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: ColorsManager.whiteColor,
                            size: 15.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Positioned(
                bottom: 40,
                left: 40,
                child: GestureDetector(
                  onTap: () {
                    blocListener.index == 3
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ConnetWithWalletView()))
                        : pageController.animateToPage(bloc.index + 1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                  },
                  child: Center(
                    child: Container(
                      height: 49,
                      width: 313,
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
              ),
      ],
    );
  }
}
