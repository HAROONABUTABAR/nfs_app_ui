import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/common_widget/button_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/theming/divider_section.dart';
import '../../../core/theming/styles.dart';
import 'logic/set_price_bloc.dart';
import 'widgets/date_with_time_section.dart';
import 'widgets/eth_with_price_section.dart';
import 'widgets/fees_section.dart';
import 'widgets/select_blockchanin_set_price.dart';
import 'widgets/supply_items_set_price_section.dart';
import 'widgets/total_earnigs_eth_section.dart';

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
        SupplyItemsSetPriceSection(bloc: bloc),
        verticalSpace(25),
        EthWithPriceSection(bloc: bloc),
        verticalSpace(25),
        DateWithTimeSection(bloc: bloc),
        verticalSpace(25),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: DivderSection(),
        ),
        verticalSpace(25),
        const FeesSection(),
        verticalSpace(25),
        const TotalEarnigsEthSection(),
        verticalSpace(25),
        ActionButtonSection(
          onTap: () {},
          textButton: "Next",
          colorButton: ColorsManager.primayColor,
        )
      ],
    );
  }
}

