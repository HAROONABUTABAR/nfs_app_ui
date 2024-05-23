import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/colors.dart';
import 'home_page_content.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePageContent(),
    );
  }
}
