import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/core/theming/styles.dart';
import 'package:custom_widget/features/common_widget/button_action.dart';
import 'package:custom_widget/features/common_widget/text_from_field_section.dart';
import 'package:custom_widget/features/ui/setup_proflie/logic/bloc/setup_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/image_with_upload_button_section.dart';

class SetUpProfileContent extends StatelessWidget {
  const SetUpProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<SetupProfileBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: ListView(
        children: [
          verticalSpace(32),
          Text(
            "Upload Photo Profile",
            style: TextStyles.font16WhiteMedium,
          ),
          verticalSpace(20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImageWithButtonUploadSection(),
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
                controller: bloc.emailConteroller,
              ),
            ],
          ),
          verticalSpace(50),
          ActionButtonSection(
              onTap: () {},
              textButton: "Submit",
              colorButton: ColorsManager.primayColor)
        ],
      ),
    );
  }
}
