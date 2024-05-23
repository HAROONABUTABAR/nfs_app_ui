import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../common_widget/text_from_field_section.dart';
import '../logic/bloc/setup_profile_bloc.dart';

class FormRegisterSection extends StatelessWidget {
  const FormRegisterSection({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<SetupProfileBloc>();
    return Column(
      children: [
        verticalSpace(32),
        TextFromFieldSection(
          onChanged: (String name) {},
          textHint: "Username",
          textLabel: "Username",
          controller: bloc.nameUserController,
        ),
        verticalSpace(20),
        TextFromFieldSection(
          onChanged: (String name) {},
          textHint: "Email",
          textLabel: "Email",
          controller: bloc.emailConteroller,
        ),
        verticalSpace(20),
        TextFromFieldSection(
          maxLines: 5,
          onChanged: (String name) {},
          textHint: "Bio",
          textLabel: "Bio",
          controller: bloc.bioController,
        ),
      ],
    );
  }
}
