import 'package:flutter/material.dart';

import '../nts_discovred_content.dart';

class ImageTileSection extends StatelessWidget {
  const ImageTileSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => NtsDiscovredContent(image: image)),
        );
      },
      child: Hero(
        tag: image,
        child: Image.asset(
          image,
          width: 130,
        ),
      ),
    );
  }
}
