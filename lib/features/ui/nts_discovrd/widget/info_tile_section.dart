
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class InfoTileSection extends StatelessWidget {
  const InfoTileSection({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.font13BlueRegular,
        ),
        const SizedBox(height: 5),
        Text(
          subtitle,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

