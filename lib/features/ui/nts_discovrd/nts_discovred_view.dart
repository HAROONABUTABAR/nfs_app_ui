import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/core/theming/styles.dart';
import 'package:flutter/material.dart';

import 'widget/image_list_view.dart';

class NtsDiscovredView extends StatelessWidget {
  const NtsDiscovredView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.darkColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: ShaderMask(
              blendMode: BlendMode.dstOut,
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.9),
                    Colors.black,
                  ],
                  stops: const [0, 0.62, 0.67, 0.85, 1],
                ).createShader(rect);
              },
              child: const SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    ImageListView(
                      startIndex: 1,
                      duration: 25,
                    ),
                    SizedBox(height: 10),
                    ImageListView(
                      startIndex: 11,
                      duration: 45,
                    ),
                    SizedBox(height: 10),
                    ImageListView(
                      startIndex: 21,
                      duration: 65,
                    ),
                    SizedBox(height: 10),
                    ImageListView(
                      startIndex: 31,
                      duration: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 24,
            right: 24,
            child: SizedBox(
              height: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Art with NFTs',
                    style: TextStyles.font13BlueRegular,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Check out this raffle for you guys only! new coin minted show some love.',
                    style: TextStyles.font13BlueRegular.copyWith(
                        height: 1.2,
                        color: ColorsManager.whiteColor.withOpacity(0.5)),
                  ),
                  const SizedBox(height: 12),
                  // const Spacer(),
                  Container(
                    width: 140,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: ColorsManager.primayColor,
                    ),
                    child: const Text(
                      'Discover',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
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
