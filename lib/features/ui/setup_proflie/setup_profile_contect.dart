import 'dart:developer';

import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/core/theming/styles.dart';
import 'package:custom_widget/features/common_widget/button_action.dart';
import 'package:custom_widget/features/ui/hey_welcome/hey_welcome.dart';
import 'package:custom_widget/features/ui/setup_proflie/logic/bloc/setup_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/snack_bar.dart';
import 'widget/form_register_section.dart';
import 'widget/image_with_upload_button_section.dart';

class SetUpProfileContent extends StatelessWidget {
  const SetUpProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<SetupProfileBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          verticalSpace(32),
          Text(
            "Upload Photo Profile",
            style: TextStyles.font16WhiteMedium,
          ),
          verticalSpace(20),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageWithButtonUploadSection(),
              FormRegisterSection(),
            ],
          ),
          verticalSpace(50),
          BlocBuilder<SetupProfileBloc, SetupProfileState>(
            builder: (context, state) {
              return ActionButtonSection(
                  onTap: () {
                    if (bloc.nameUserController.text.isNotEmpty &&
                        bloc.emailConteroller.text.isNotEmpty) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HeyWelcomeView()));
                    } else if (bloc.nameUserController.text.isEmpty) {
                      snackBar(
                        context,
                        "Username can't be empty",
                        type: SnackBarType.error,
                      );
                    } else if (bloc.emailConteroller.text.isEmpty) {
                      snackBar(
                        context,
                        "Email can't be empty",
                        type: SnackBarType.error,
                      );
                    }
                  },
                  textButton: "Submit",
                  colorButton: ColorsManager.primayColor);
            },
          )
        ],
      ),
    );
  }
}
