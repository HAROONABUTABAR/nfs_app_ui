import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/common_widget/button_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';
import '../../../core/helpers/snack_bar.dart';
import '../../../core/helpers/spacing.dart';
import '../set_item_upload/set_item_upload_view.dart';
import 'logic/bloc/upload_new_item_nft_bloc.dart';
import 'widget/form_upload_new_item_section.dart';
import 'widget/upload_new_item_section.dart';

class UploadNftContent extends StatelessWidget {
  const UploadNftContent({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<UploadNewItemNftBloc>();
    return ListView(
      children: [
        const UploadNewItemSection(),
        FormUploadNewItemSection(bloc: bloc),
        verticalSpace(20),
        BlocBuilder<UploadNewItemNftBloc, UploadNewItemNftState>(
          builder: (context, state) {
            return ActionButtonSection(
              onTap: () {
                if (bloc.nameEditingController.text.isNotEmpty &&
                    bloc.linkExternalController.text.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SetUploadItemView()),
                  );
                } else if (bloc.nameEditingController.text.isEmpty) {
                  showCustomToast(
                    context: context,
                    message: "Name cannot be empty.",
                    description: 'Please enter a valid Name to continue.',
                    primaryColor: ColorsManager.dangerColor,
                    icon: const Icon(Icons.error_outline),
                    type: ToastificationType.error,
                  );
                } else if (bloc.linkExternalController.text.isEmpty) {
                  showCustomToast(
                    context: context,
                    message: "Link external cannot be empty.",
                    description:
                        'Please enter a valid Link external to continue.',
                    primaryColor: ColorsManager.dangerColor,
                    icon: const Icon(Icons.error_outline),
                    type: ToastificationType.error,
                  );
                }
              },
              textButton: "Next",
              colorButton: ColorsManager.primayColor,
            );
          },
        )
      ],
    );
  }
}
