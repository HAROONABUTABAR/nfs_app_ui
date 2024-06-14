
import 'package:flutter/material.dart';

class ImageUploadItemDoneSection extends StatelessWidget {
  const ImageUploadItemDoneSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/icons/uploadItem.png",
      width: 200,
      height: 200,
    );
  }
}
