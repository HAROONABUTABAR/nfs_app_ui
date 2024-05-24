

import 'package:custom_widget/features/ui/connect_with_wallet/logic/bloc/wallet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors.dart';
import '../../common_widget/button_action.dart';
import '../setup_proflie/setup_proflie_view.dart';
import 'data/model_wallet.dart';
import 'widgets/card_wallet_section.dart';
import 'widgets/image_with_text_section.dart';
import 'widgets/show_model_bottom_wallet_section.dart';

class ConnetWithWalletContent extends StatelessWidget {
  const ConnetWithWalletContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<WalletModeImageText> wallet = [
      const WalletModeImageText(
        text: "MetaMask",
        image: "assets/images/connect_wallet_image/wallet_meta_mask.png",
      ),
      const WalletModeImageText(
        text: "Trust Wallet",
        image: "assets/images/connect_wallet_image/trust_wallet.png",
      ),
      const WalletModeImageText(
        text: "Enter ethereum address",
        image: "assets/images/connect_wallet_image/enter_ethereum_address.png",
      ),
    ];
    var bloc = context.read<WalletBloc>();
    var blocListener = context.watch<WalletBloc>();

    return ListView(
      children: [
        const ImageWithTextSection(),
        verticalSpace(20.h),
        ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: wallet.length,
          itemBuilder: (context, index) => CardWalletSection(
            walletModeImageText: wallet[index],
            onTap: () {
              if (index == 2) {
                blocListener.walletController.clear();
                bloc.add(WalletCheckEvent(index: -1));
                showModelBottomWalletSection(context);
              } else {
                bloc.add(WalletCheckEvent(index: index));
              }
            },
          ),
        ),
        verticalSpace(44.h),
        BlocBuilder<WalletBloc, WalletState>(
          builder: (context, state) {
            return bloc.index == -1
                ? const ActionButtonSection(
                    colorButton: ColorsManager.grayColor,
                    onTap: null,
                    textButton: "Confirm",
                    height: 49,
                    width: 370,
                  )
                : ActionButtonSection(
                    colorButton: ColorsManager.primayColor,
                    onTap: () {
                      if (bloc.index == 0 || bloc.index == 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SetUpProfileView()));
                      }
                    },
                    textButton: "Confirm",
                    height: 49,
                    width: 370,
                  );
          },
        ),
      ],
    );
  }
}
