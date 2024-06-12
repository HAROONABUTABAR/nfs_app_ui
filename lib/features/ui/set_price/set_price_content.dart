import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/styles.dart';
import 'package:custom_widget/features/common_widget/text_from_field_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/set_price_bloc.dart';
import 'widgets/select_blockchanin_set_price.dart';
import 'widgets/supply_items_set_price_section.dart';

class SetPriceContent extends StatelessWidget {
  const SetPriceContent({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<SetPriceBloc>();
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: [
        verticalSpace(12),
        const SelectBlockchainSetPriceSection(
          select: "Select Blockchain",
        ),
        verticalSpace(25),
        SupplyItemsSetPriceSection(bloc: bloc)
      ],
    );
  }
}
