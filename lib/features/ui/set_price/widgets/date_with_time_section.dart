import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../../common_widget/text_from_field_section.dart';
import '../logic/set_price_bloc.dart';
import 'eth_with_icon_section.dart';

class DateWithTimeSection extends StatelessWidget {
  const DateWithTimeSection({
    super.key,
    required this.bloc,
  });

  final SetPriceBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Set expiration date and time",
            style: TextStyles.font14GrayRegular,
          ),
          verticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const EthWithIconSection(
                hasIconOrText: false,
                textMain: "Date",
              ),
              horizontalSpace(10),
              Expanded(
                child: TextFromFieldSection(
                    onChanged: (String value) {},
                    textHint: "",
                    textLabel: "Time",
                    controller: bloc.timeController),
              )
            ],
          ),
        ],
      ),
    );
  }
}
