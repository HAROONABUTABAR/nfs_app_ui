import 'package:flutter/material.dart';

class TrendingCollectinsModel {
  final String mainName;
  final String subName;
  final String mainImage;
  final String ethLogo;
  final String mainEth;
  final String subEth;
  final int indexImage;
  final Color color;

  TrendingCollectinsModel({
    required this.mainName,
    required this.subName,
    required this.mainImage,
    required this.ethLogo,
    required this.mainEth,
    required this.subEth,
    required this.indexImage,
    required this.color,
  });
}
