import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/core/theming/styles.dart';
import 'package:custom_widget/features/ui/nts_discovrd/widget/info_tile_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/animations/fade_animation.dart';
import 'widget/blur_container_section.dart';


class NtsDiscovredContent extends StatelessWidget {
  const NtsDiscovredContent({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Hero(
                tag: image,
                child: Image.asset(image),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: FadeAnimation(
                  intervalEnd: 0.1,
                  child: BlurContainerSection(
                    child: Container(
                      width: 160,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.1),
                      ),
                      child: Text(
                        'Digital NFT Art',
                        style: TextStyles.font16WhiteMedium,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 50.h,
                left: 10.w,
                child: Container(
                  height: 50.h,
                  width: 50.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorsManager.darkColor,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: ColorsManager.whiteColor,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: FadeAnimation(
              intervalStart: 0.3,
              child: Text(
                'Monkey #271',
                style: TextStyles.font32BlueBold,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: FadeAnimation(
              intervalStart: 0.35,
              child: Text(
                'Owned by Gennady',
                style: TextStyles.font16WhiteMedium,
              ),
            ),
          ),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: FadeAnimation(
              intervalStart: 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InfoTileSection(title: '3d 5h 23m', subtitle: 'Remaining Time'),
                  InfoTileSection(title: '16.7 ETH', subtitle: 'Highest Bid'),
                ],
              ),
            ),
          ),
          const Spacer(),
          FadeAnimation(
            intervalStart: 0.6,
            child: Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorsManager.primayColor,
              ),
              child: FadeAnimation(
                intervalStart: 0.8,
                child: Text('Place Bid', style: TextStyles.font13BlueRegular),
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
