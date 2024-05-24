import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../common_widget/text_from_field_section.dart';
import '../logic/bloc/search_bloc.dart';

class SearchWithTextFiledSection extends StatelessWidget {
  const SearchWithTextFiledSection({
    super.key,
    required this.bloc,
  });

  final SearchBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Search",
            style: TextStyles.font32BlueBold,
          ),
          verticalSpace(24),
          TextFromFieldSection(
            isShowPrefixIcon: true,
            onChanged: (String name) {},
            textHint: "Search your NFT...",
            textLabel: "Search your NFT...",
            controller: bloc.searchController,
          )
        ],
      ),
    );
  }
}
