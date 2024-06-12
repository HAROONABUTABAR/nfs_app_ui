import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/core/theming/styles.dart';
import 'package:custom_widget/features/common_widget/button_action.dart';
import 'package:custom_widget/features/ui/set_price/set_price_view.dart';
import 'package:flutter/material.dart';

class SetUploadItemContent extends StatelessWidget {
  const SetUploadItemContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(20),
        const DropDownListSetItemSection(),
        verticalSpace(20),
        const SetItemWithIconSection(
          mainText: "Properties",
          subText: "Textual traits that show up as rectangles",
        ),
        verticalSpace(20),
        const SetItemWithIconSection(
          mainText: "Levels",
          subText: "Numerical traits that show as a progress bar",
        ),
        verticalSpace(20),
        const SetItemWithIconSection(
          mainText: "Stats",
          subText: "Numerical traits that show as a number",
        ),
        const Spacer(
          flex: 6,
        ),
        ActionButtonSection(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SetPriceView(),
              ),
            );
          },
          textButton: "Next",
          colorButton: ColorsManager.primayColor,
        ),
        const Spacer(),
      ],
    );
  }
}

class SetItemWithIconSection extends StatelessWidget {
  const SetItemWithIconSection({
    super.key,
    required this.mainText,
    required this.subText,
  });

  final String mainText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainText,
                style: TextStyles.font14BlueSemiBold,
              ),
              Text(
                subText,
                style: TextStyles.font13BlueRegular.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: ColorsManager.primayColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: ColorsManager.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}

class DropDownListSetItemSection extends StatelessWidget {
  const DropDownListSetItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorsManager.secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " Choose Collections",
                  style: TextStyles.font16WhiteSemiBold.copyWith(
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const Icon(Icons.arrow_downward_outlined,
                    color: ColorsManager.whiteColor)
              ],
            ),
          ),
          verticalSpace(10),
          Text(
            "This is the collection where your item will appear",
            style: TextStyles.font16WhiteSemiBold.copyWith(
              fontWeight: FontWeight.w200,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
