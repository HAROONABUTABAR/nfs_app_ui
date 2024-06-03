import 'package:custom_widget/core/theming/styles.dart';
import 'package:custom_widget/features/common_widget/button_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_icon/flutter_dynamic_icon.dart';

import '../../../core/theming/colors.dart';

class SettingAppContent extends StatefulWidget {
  const SettingAppContent({super.key});

  @override
  State<SettingAppContent> createState() => _SettingAppContentState();
}

class _SettingAppContentState extends State<SettingAppContent> {
  int iconIndex = 0;
  List<String> iconName = ['icon1', 'icon2', 'icon3'];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildIconTile(0, 'blue'),
        buildIconTile(1, 'black'),
        buildIconTile(2, 'black and white'),
        ActionButtonSection(
          onTap: () => changeAppIcon(),
          textButton: "Change Icon",
          colorButton: ColorsManager.primayColor,
        ),
      ],
    );
  }

  Widget buildIconTile(int index, String themeTxt) => Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () => setState(() => iconIndex = index),
          child: ListTile(
              contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
              leading: Image.asset(
                imagefiles[index],
                width: 45,
                height: 45,
              ),
              title: Text(themeTxt, style: TextStyles.font13BlueRegular),
              trailing: iconIndex == index
                  ? const Icon(
                      Icons.check_circle_rounded,
                      color: Colors.green,
                      size: 30,
                    )
                  : Icon(
                      Icons.circle_outlined,
                      color: Colors.grey.withOpacity(0.5),
                      size: 30,
                    )),
        ),
      );

  changeAppIcon() async {
    try {
      if (await FlutterDynamicIcon.supportsAlternateIcons) {
        await FlutterDynamicIcon.setAlternateIconName(iconName[iconIndex]);
        debugPrint("App icon change successful");
        return;
      }
    } catch (e) {
      debugPrint("Exception: ${e.toString()}");
    }
    debugPrint("Failed to change app icon ");
  }
}

List imagefiles = [
  "assets/images/icon_app/icon1.png",
  "assets/images/icon_app/icon2.png",
  "assets/images/icon_app/icon3.png",
];
