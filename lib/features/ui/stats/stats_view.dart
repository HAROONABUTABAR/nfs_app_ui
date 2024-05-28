import 'package:custom_widget/features/ui/stats/stats_view_content.dart';
import 'package:flutter/material.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StatsViewContent(),
    );
  }
}
