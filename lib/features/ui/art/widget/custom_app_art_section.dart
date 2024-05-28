
import 'package:flutter/material.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';

class ArtCustomAppBarSection extends StatelessWidget {
  const ArtCustomAppBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/art_image/art_image.png",
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        
        Positioned(
          top: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: ColorsManager.darkColor,
                  ),
                  alignment: Alignment.center,
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20.0,
                      color: ColorsManager.whiteColor,
                    ),
                  ),
                ),
              ),
              horizontalSpace(240),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: ColorsManager.darkColor,
                  ),
                  child: const Icon(
                    Icons.share,
                    size: 20.0,
                    color: ColorsManager.whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ),
    
      ],
    );
  }
}
