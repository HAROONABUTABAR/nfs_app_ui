import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class OnBordingContant extends StatelessWidget {
  const OnBordingContant({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  final String title;
  final String subTitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpace(150.h),
          Expanded(
            flex: 0,
            child: Image.asset(
              image,
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpace(30),
                    Text(
                      title,
                      style: TextStyles.font32BlueBold,
                      textAlign: TextAlign.center,
                    ),
                    verticalSpace(20),
                    Text(
                      subTitle,
                      style: TextStyles.font14GrayRegular,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
