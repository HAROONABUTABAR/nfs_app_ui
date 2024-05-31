import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class CreateByDevNetItemsSection extends StatelessWidget {
  const CreateByDevNetItemsSection({
    super.key,
    required this.name,
    required this.image,
  });
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            image,
          ),
        ),
        horizontalSpace(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Created by",
              style: TextStyles.font13BlueRegular.copyWith(
                fontWeight: FontWeight.w200,
              ),
            ),
            Text(
              name,
              style: TextStyles.font13BlueRegular,
            ),
          ],
        ),
      ],
    );
  }
}
