import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/features/ui/edit_proifle/logic/bloc/edit_profile_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widget/change_photo_edit_profile_section.dart';
import 'widget/from_user_info_profile_edit_section.dart';
import 'widget/links_from_edit_profile_section.dart';

class EditProfileContent extends StatelessWidget {
  const EditProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<EditProfileBloc>();
    return ListView(
      children: [
        const ChangePhotoEditProfileSection(),
        verticalSpace(100),
        FromUserInfoProfileEditSection(bloc: bloc),
        verticalSpace(20),
        LinksFromEditProfileSection(bloc: bloc),
      ],
    );
  }
}
