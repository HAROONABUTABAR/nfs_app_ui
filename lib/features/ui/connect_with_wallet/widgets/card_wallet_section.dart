import 'package:flutter/material.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../data/model_wallet.dart';

class CardWalletSection extends StatelessWidget {
  const CardWalletSection({
    super.key,
    required this.walletModeImageText,
    required this.onTap,
  });
  final WalletModeImageText walletModeImageText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        width: 312,
        height: 56,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: ColorsManager.secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Image.asset(walletModeImageText.image),
              horizontalSpace(10),
              Text(walletModeImageText.text,
                  style: TextStyles.font13BlueRegular),
            ],
          ),
        ),
      ),
    );
  }
}
