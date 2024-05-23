import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/ui/setup_proflie/logic/bloc/setup_profile_bloc.dart';
import 'package:custom_widget/features/ui/setup_proflie/setup_profile_contect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/styles.dart';

class SetUpProfileView extends StatelessWidget {
  const SetUpProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetupProfileBloc(),
      child: Scaffold(
        backgroundColor: ColorsManager.darkColor,
        appBar: AppBar(
          backgroundColor: ColorsManager.darkColor,
          title: Text(
            "Setup Profile",
            style: TextStyles.font24BlackBold.copyWith(
              color: ColorsManager.whiteColor,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: ColorsManager.whiteColor,
            ),
          ),
        ),
        body: const SetUpProfileContent(),
      ),
    );
  }
}
