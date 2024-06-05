import 'package:custom_widget/features/ui/upload_nft/logic/bloc/upload_new_item_nft_bloc.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../common_widget/text_from_field_section.dart';

class FormUploadNewItemSection extends StatelessWidget {
  const FormUploadNewItemSection({
    super.key,
    required this.bloc,
  });

  final UploadNewItemNftBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(20),
          TextFromFieldSection(
            onChanged: (String values) {},
            textHint: "Name",
            textLabel: "Name",
            controller: bloc.nameEditingController,
          ),
          verticalSpace(10),
          TextFromFieldSection(
            onChanged: (String values) {},
            textHint: "External link",
            textLabel: "External link",
            controller: bloc.linkExternalController,
          ),
          verticalSpace(10),
          Text(
            "enefte will include a link to this URL on this itern's detail page, so that users can click to learn more about it. You are welcome to link to your own webpage with more details.",
            style: TextStyles.font13BlueRegular
                .copyWith(fontSize: 10, fontWeight: FontWeight.w200),
          ),
          verticalSpace(10),
          TextFromFieldSection(
            maxLines: 5,
            onChanged: (String values) {},
            textHint: "Bio",
            textLabel: "Bio",
            controller: bloc.bioController,
          ),
        ],
      ),
    );
  }
}
