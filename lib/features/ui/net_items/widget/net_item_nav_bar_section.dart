import 'package:custom_widget/features/ui/net_items_details/net_items_details_view.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../home_page/data/models/prflie_slider_model.dart';

class NetItemNavBarSection extends StatelessWidget {
  const NetItemNavBarSection({
    super.key,
    required this.model,
  });

  final ProfileModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                style: TextStyles.font16WhiteSemiBold.copyWith(
                  fontSize: 22,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NetItemsDetailsView(
                          model: model,
                        ))),
            child: Container(
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
                    "Place a bid ",
                    style: TextStyles.font13BlueRegular,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
