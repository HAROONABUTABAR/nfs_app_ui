import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/ui/hey_welcome/hey_welcome_content.dart';
import 'package:flutter/material.dart';

class HeyWelcomeView extends StatelessWidget {
  const HeyWelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsManager.darkColor,
      body:  HeyWelcomeContent(),
    );
  }
}
