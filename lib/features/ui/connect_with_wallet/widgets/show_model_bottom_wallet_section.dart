import 'dart:developer';

import 'package:custom_widget/features/ui/setup_proflie/setup_proflie_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../common_widget/button_action.dart';
import '../../../common_widget/text_from_field_section.dart';
import '../logic/bloc/wallet_bloc.dart';

Future<dynamic> showModelBottomWalletSection(BuildContext context) {
  var bloc = context.read<WalletBloc>();
  return showModalBottomSheet(
    isScrollControlled: true,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    context: context,
    builder: (context) {
      return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          height: 330,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(29)),
              color: ColorsManager.darkColor),
          child: Column(
            children: [
              verticalSpace(44),
              Text(
                "Enter ethereum address",
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFromFieldSection(
                  controller: bloc.walletController,
                  textHint: "Address",
                  textLabel: "Address",
                  onChanged: (String value) {},
                ),
              ),
              verticalSpace(44),
              ActionButtonSection(
                colorButton: ColorsManager.primayColor,
                onTap: () {
                  if (bloc.walletController.text.isEmpty) {
                    snackBar(
                      context,
                      "Something went wrong. Please check your credentials and try again",
                      type: SnackBarType.error,
                    );
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SetUpProfileView()));
                  }
                },
                textButton: "Confirm",
                height: 49,
                width: 340,
              ),
              verticalSpace(44),
            ],
          ),
        ),
      );
    },
  );
}

enum SnackBarType {
  error,
  success,
  info,
  warning,
}

void snackBar(BuildContext context, String message,
    {SnackBarType type = SnackBarType.error}) {
  if (type == SnackBarType.error) {
    return showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(
        message: message,
      ),
    );
  } else if (type == SnackBarType.success) {
    return showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.success(message: message),
    );
  }
}
