import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/common_widget/button_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/styles.dart';
import '../home_page/data/models/prflie_slider_model.dart';

class NetItemViewContent extends StatelessWidget {
  const NetItemViewContent({super.key, required this.model});
  final ProfileModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView(
              children: [
                verticalSpace(15),
                Image.asset(
                  model.mainImage,
                  fit: BoxFit.cover,
                ),
                verticalSpace(15),
                Text(
                  model.nameProfile,
                  style: TextStyles.font16WhiteSemiBold,
                ),
                verticalSpace(10),
                Text(
                  model.nameMain,
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CreateByDevNetItemsSection(
                      name: "KarafuruDeployer",
                      image: "",
                    ),
                    CreateByDevNetItemsSection(
                      name: "Wakanabe420",
                      image: "",
                    ),
                  ],
                ),
                verticalSpace(10),
                Text(
                  "Karafuru is home to 5,555 generative arts where colors reign supreme. Leave the drab reality and enter the world of Karafuru by Museum of Toys.",
                  style: TextStyles.font13BlueRegular.copyWith(
                    fontSize: 12,
                  ),
                ),
                verticalSpace(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Currebt Bid",
                          style: TextStyles.font13BlueRegular
                              .copyWith(fontWeight: FontWeight.w200),
                        ),
                        verticalSpace(8),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "assets/images/home_image/logos_ethereum.svg"),
                            horizontalSpace(10),
                            Text(
                              model.ethNumber,
                              style: TextStyles.font13BlueRegular,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Ends In",
                          style: TextStyles.font13BlueRegular
                              .copyWith(fontWeight: FontWeight.w200),
                        ),
                        verticalSpace(8),
                        Text(
                          "June 21, 2022 at 23.00",
                          style: TextStyles.font13BlueRegular,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 100.h,
          decoration: const BoxDecoration(
            color: ColorsManager.secondaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/home_image/logos_ethereum.svg",
                    height: 35.h,
                  ),
                  horizontalSpace(10),
                  Text(
                    model.ethNumber,
                    style: TextStyles.font24BlueBold,
                  )
                ],
              ),
              Container(
                width: 150,
                height: 55,
                decoration: BoxDecoration(
                  color: ColorsManager.primayColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.wallet,
                      size: 30,
                      color: ColorsManager.whiteColor,
                    ),
                    horizontalSpace(10),
                    Text(
                      "Place a bid",
                      style: TextStyles.font16WhiteSemiBold,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CreateByDevNetItemsSection extends StatelessWidget {
  const CreateByDevNetItemsSection({
    super.key,
    required this.name,
    required this.image,
  });
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(),
        horizontalSpace(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Created by",
              style: TextStyles.font13BlueRegular.copyWith(
                fontWeight: FontWeight.w200,
              ),
            ),
            Text(
              name,
              style: TextStyles.font13BlueRegular,
            ),
          ],
        ),
      ],
    );
  }
}
