import 'package:custom_widget/core/theming/styles.dart';
import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "Home",
            style: TextStyles.font32BlueBold,
          ),
        )
      ],
    );
  }
}
