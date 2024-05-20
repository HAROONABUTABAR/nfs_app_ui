import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBordangScreen extends StatelessWidget {
  const OnBordangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemBuilder: (context, index) {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(150.h),
              Expanded(
                flex: 0,
                child: Image.asset(
                  "assets/images/cons.png",
                  width: 207,
                  height: 207,
                ),
              ),
              verticalSpace(80.h),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorsManager.secondaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r)),
                  ),
                  width: double.infinity,
                  height: 700,
                  child: Column(
                    children: [
                      verticalSpace(30),
                      Text(
                        "Discover largest\nNFT marketplace",
                        style: TextStyles.font32BlueBold,
                      ),
                      verticalSpace(20),
                      Text(
                        "Buy and sell digital items",
                        style: TextStyles.font14GrayRegular,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
