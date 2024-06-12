import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../common_widget/text_from_field_section.dart';
import '../logic/set_price_bloc.dart';

class SupplyItemsSetPriceSection extends StatelessWidget {
  const SupplyItemsSetPriceSection({
    super.key,
    required this.bloc,
  });

  final SetPriceBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          TextFromFieldSection(
            onChanged: (String value) {},
            textHint: "Supply Items",
            textLabel: "Supply Items",
            controller: bloc.supplyItemsController,
          ),
          verticalSpace(10),
          Text(
            "The number of coples that can be minted. No gas cost to your Quantities above one coming soon",
            style: TextStyles.font14BlueSemiBold.copyWith(
              fontWeight: FontWeight.w200,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
