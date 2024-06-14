
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CompleteListingStepperSction extends StatelessWidget {
  const CompleteListingStepperSction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      activeStepTextColor: ColorsManager.darkColor,
      lineStyle: const LineStyle(
        lineSpace: 0,
        lineWidth: 10,
        activeLineColor: ColorsManager.whiteColor,

        defaultLineColor: ColorsManager.whiteColor,
      ),
      internalPadding: 0,
      showLoadingAnimation: false,
      stepRadius: 22,
      showStepBorder: false,
      steps: [
        const EasyStep(
          customStep: CircleAvatar(
            radius: 22,
            backgroundColor: ColorsManager.grayColor,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: ColorsManager.successColor,
              child: Icon(
                Icons.check,
                color: ColorsManager.whiteColor,
              ),
            ),
          ),
        ),
        EasyStep(
          customStep: CircleAvatar(
            radius: 22,
            backgroundColor: ColorsManager.grayColor,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: ColorsManager.primayColor,
              child: Text(
                "2",
                style: TextStyles.font14LightGrayRegular,
              ),
            ),
          ),
        ),
         EasyStep(
          customStep: CircleAvatar(
            radius: 22,
            backgroundColor: ColorsManager.grayColor,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: ColorsManager.darkColor,
              child: Text(
                "3",
                style: TextStyles.font14BlueSemiBold,
              ),
            ),
          ),
        ),
      ],
      onStepReached: (index) {},
      activeStep: 0,
    );
  }
}


