import 'package:flutter/material.dart';

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
