import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../common_widget/text_from_field_section.dart';
import '../logic/bloc/edit_profile_bloc.dart';

class LinksFromEditProfileSection extends StatelessWidget {
  const LinksFromEditProfileSection({
    super.key,
    required this.bloc,
  });

  final EditProfileBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Links",
            style: TextStyles.font24BlueBold,
          ),
          verticalSpace(20),
          TextFromFieldSection(
            onChanged: (String value) {},
            textHint: "Twitter",
            textLabel: "Twitter",
            controller: bloc.linkTwitterController,
          ),
          verticalSpace(20),
          TextFromFieldSection(
            onChanged: (String value) {},
            textHint: "Instagram",
            textLabel: "Instagram",
            controller: bloc.instagramController,
          )
        ],
      ),
    );
  }
}
