import 'package:custom_widget/core/helpers/spacing.dart';
import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/common_widget/button_action.dart';
import 'package:custom_widget/features/ui/complete_listing/complete_listing_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';
import '../../../core/helpers/snack_bar.dart';
import '../../../core/theming/divider_section.dart';
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
          onTap: () {
            if(bloc.priceController.text.isEmpty){
                showCustomToast(
                    context: context,
                    message: "Set Price cannot be empty.",
                    description:
                        'Please enter a valid Set Price to continue.',
                    primaryColor: ColorsManager.dangerColor,
                    icon: const Icon(Icons.error_outline),
                    type: ToastificationType.error,
                  );

            }else if(bloc.timeController.text.isEmpty){
                showCustomToast(
                    context: context,
                    message: "Set Time cannot be empty.",
                    description:
                        'Please enter a valid Set Time to continue.',
                    primaryColor: ColorsManager.dangerColor,
                    icon: const Icon(Icons.error_outline),
                    type: ToastificationType.error,
                  );
            }else{
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CompleteListingView()),
              );
            }
          },
          textButton: "Next",
          colorButton: ColorsManager.primayColor,
        )
      ],
    );
  }
}

