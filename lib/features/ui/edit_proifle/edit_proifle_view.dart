import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/common_widget/button_action.dart';
import 'package:custom_widget/features/ui/edit_proifle/logic/bloc/edit_profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'edit_proifle_content.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditProfileBloc(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsManager.darkColor,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorsManager.whiteColor,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 3.h),
              child: ActionButtonSection(
                width: 150.w,
                height: 40.h,
                onTap: () {},
                textButton: "Save Changes",
                colorButton: ColorsManager.primayColor,
              ),
            )
          ],
        ),
        body: const EditProfileContent(),
      ),
    );
  }
}
