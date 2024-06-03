import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/core/theming/styles.dart';
import 'package:custom_widget/features/common_widget/button_action.dart';
import 'package:custom_widget/features/ui/bottom_nav_bar/bottom_nav_bar_view.dart';
import 'package:custom_widget/features/ui/setup_proflie/logic/bloc/setup_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

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
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavBarView()),
                          (route) => false);
                    } else if (bloc.nameUserController.text.isEmpty) {
                      showCustomToast(
                        context: context,
                        message: "Username cannot be empty.",
                        description:
                            'Please enter a valid username to continue.',
                        primaryColor: ColorsManager.dangerColor,
                        icon: const Icon(Icons.error_outline),
                        type: ToastificationType.error,
                      );
                    } else if (bloc.emailConteroller.text.isEmpty) {
                      showCustomToast(
                        context: context,
                        message: "Email cannot be empty.",
                        description: 'Please enter a valid Email to continue.',
                        primaryColor: ColorsManager.dangerColor,
                        icon: const Icon(Icons.error_outline),
                        type: ToastificationType.error,
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
