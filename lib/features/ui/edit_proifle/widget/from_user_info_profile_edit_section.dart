import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../common_widget/text_from_field_section.dart';
import '../logic/bloc/edit_profile_bloc.dart';

class FromUserInfoProfileEditSection extends StatelessWidget {
  const FromUserInfoProfileEditSection({
    super.key,
    required this.bloc,
  });

  final EditProfileBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          TextFromFieldSection(
            onChanged: (String value) {},
            textHint: "Kevin",
            textLabel: "Username",
            controller: bloc.userNameController,
          ),
          verticalSpace(10),
          TextFromFieldSection(
            onChanged: (String value) {},
            textHint: "Email",
            textLabel: "Email",
            controller: bloc.emailController,
          ),
          verticalSpace(10),
          TextFromFieldSection(
            onChanged: (String value) {},
            textHint: "Bio",
            textLabel: "Bio",
            controller: bloc.bioController,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}
