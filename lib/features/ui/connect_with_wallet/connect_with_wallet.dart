import 'package:custom_widget/features/ui/connect_with_wallet/logic/bloc/wallet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import 'connect_with_wallet_view_content.dart';

class ConnetWithWalletView extends StatelessWidget {
  const ConnetWithWalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WalletBloc(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70.h,
          backgroundColor: ColorsManager.darkColor,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorsManager.whiteColor,
            ),
          ),
          title: Image.asset("assets/images/logo/logo_enefte.png"),
        ),
        body: const ConnetWithWalletContent(),
      ),
    );
  }
}
