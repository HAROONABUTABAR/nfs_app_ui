import 'package:custom_widget/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';
import 'setting_app_content.dart';

class SettingAppView extends StatelessWidget {
  const SettingAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.darkColor,
        title: Text("Settings", style: TextStyles.font16WhiteMedium),
      ),
      body: const SettingAppContent(),
    );
  }
}
