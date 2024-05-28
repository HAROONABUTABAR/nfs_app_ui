import 'package:flutter/material.dart';

import 'art_content.dart';
import 'widget/custom_app_art_section.dart';

class ArtView extends StatelessWidget {
  const ArtView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ArtCustomAppBarSection(),
          Expanded(child: ArtContent()),
        ],
      ),
    );
  }
}
