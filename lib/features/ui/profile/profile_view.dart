import 'package:flutter/material.dart';
import '../../../core/theming/colors.dart';
import 'profile_view_context.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                height: 170,
                "assets/images/profile_setup_image/profile_image.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                bottom: -80,
                left: 20,
                child: Image.asset(
                  height: 140,
                  width: 130,
                  "assets/images/profile_setup_image/profileSetup.png",
                ),
              ),
              Positioned(
                top: 60,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
          ),
          const Expanded(child: ProfileViewContect()),
        ],
      ),
    );
  }
}
