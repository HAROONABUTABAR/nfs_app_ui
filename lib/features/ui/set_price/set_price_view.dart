import 'package:custom_widget/core/theming/colors.dart';
import 'package:custom_widget/features/ui/set_price/logic/set_price_bloc.dart';
import 'package:custom_widget/features/ui/set_price/set_price_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theming/styles.dart';

class SetPriceView extends StatelessWidget {
  const SetPriceView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetPriceBloc(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsManager.darkColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorsManager.whiteColor,
            ),
          ),
          title: Text(
            "Set Price",
            style: TextStyles.font15DarkBlueMedium,
          ),
        ),
        body: const SetPriceContent(),
      ),
    );
  }
}
