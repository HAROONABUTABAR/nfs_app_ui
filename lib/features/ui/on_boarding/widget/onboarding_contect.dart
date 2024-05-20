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
    required this.isShowContainer,
    required this.isShowImage,
  });

  final String title;
  final String subTitle;
  final String image;
  final bool isShowContainer;
  final bool isShowImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isShowImage == false
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        isShowImage == false ? Container() : verticalSpace(150.h),
        isShowImage == true
            ? Expanded(
                flex: 0,
                child: Image.asset(
                  image,
                  width: 207,
                  height: 207,
                ),
              )
            : Container(
                padding: const EdgeInsets.only(top: 4, left: 1),
                child: Image.asset(
                  "assets/images/logo/logo_circle.png",
                  // width: 121.73,
                  // height: 28.24,
                ),
              ),
        verticalSpace(80.h),
        isShowContainer == true
            ? Expanded(
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
                        verticalSpace(10),
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
              )
            : Expanded(
                child: SizedBox(
                  width: double.infinity,
                  height: 700,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        verticalSpace(70),
                        Text(
                          title,
                          style: TextStyles.font32BlueBold,
                        ),
                        verticalSpace(20),
                        Text(
                          subTitle,
                          style: TextStyles.font14GrayRegular.copyWith(
                            color: ColorsManager.grayColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
      ],
    );
  }
}
