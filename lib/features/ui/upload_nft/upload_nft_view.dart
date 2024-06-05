import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/ui/upload_nft/logic/bloc/upload_new_item_nft_bloc.dart';
import 'package:custom_widget/features/ui/upload_nft/upload_nft_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/styles.dart';

class UploadNftView extends StatelessWidget {
  const UploadNftView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UploadNewItemNftBloc(),
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
          title: Text("Upload Items", style: TextStyles.font16WhiteMedium),
          centerTitle: true,
        ),
        body: const UploadNftContent(),
      ),
    );
  }
}
