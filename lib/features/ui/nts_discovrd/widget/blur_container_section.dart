import 'dart:ui';

import 'package:flutter/material.dart';

class BlurContainerSection extends StatelessWidget {
  const BlurContainerSection({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 10.0,
        ),
        child: child,
      ),
    );
  }
}
