import 'package:custom_widget/features/ui/setup_proflie/setup_proflie_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/helpers/snack_bar.dart';
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
                    showCustomToast(
                      context: context,
                      message: "Adderss Wallet cannot be empty.",
                      description:
                          "Something went wrong. Please check your credentials and try again",
                      primaryColor: ColorsManager.dangerColor,
                      icon: const Icon(Icons.error_outline),
                      type: ToastificationType.error,
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
