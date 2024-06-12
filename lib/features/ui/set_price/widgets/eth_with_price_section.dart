import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../common_widget/text_from_field_section.dart';
import '../logic/set_price_bloc.dart';
import 'eth_with_icon_section.dart';

class EthWithPriceSection extends StatelessWidget {
  const EthWithPriceSection({
    super.key,
    required this.bloc,
  });

  final SetPriceBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const EthWithIconSection(
            hasIconOrText: true,
            textMain: "ETH",
          ),
          horizontalSpace(10),
          Expanded(
            child: TextFromFieldSection(
                onChanged: (String value) {},
                textHint: "",
                textLabel: "Price",
                controller: bloc.priceController),
          )
        ],
      ),
    );
  }
}
