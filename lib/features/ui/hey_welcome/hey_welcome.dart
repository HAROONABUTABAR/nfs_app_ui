import 'dart:developer';

import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/ui/hey_welcome/hey_welcome_content.dart';
import 'package:custom_widget/features/ui/home_page/home_view.dart';
import 'package:flutter/material.dart';

class HeyWelcomeView extends StatefulWidget {
  const HeyWelcomeView({super.key});

  @override
  State<HeyWelcomeView> createState() => _HeyWelcomeViewState();
}

class _HeyWelcomeViewState extends State<HeyWelcomeView> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      log("done");
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomePageView()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsManager.darkColor,
      body: HeyWelcomeContent(),
    );
  }
}
