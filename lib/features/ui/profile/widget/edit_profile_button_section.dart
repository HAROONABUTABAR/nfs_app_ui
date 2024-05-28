import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../edit_proifle/edit_proifle_view.dart';

class EditProfileButtonSection extends StatelessWidget {
  const EditProfileButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EditProfileView(),
              ),
            );
          },
          child: Container(
            width: 160,
            height: 50,
            alignment: Alignment.topRight,
            decoration: BoxDecoration(
                border: Border.all(
                  color: ColorsManager.whiteColor,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "Edit Profile",
                style: TextStyles.font15DarkBlueMedium,
              ),
            ),
          ),
        ),
        horizontalSpace(20),
      ],
    );
  }
}
