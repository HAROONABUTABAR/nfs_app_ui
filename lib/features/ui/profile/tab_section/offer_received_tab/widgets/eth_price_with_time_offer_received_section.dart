import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/theming/styles.dart';
import '../../../data/offers_received_model.dart';

class EthPriceWithTimeOfferReceivedSection extends StatelessWidget {
  const EthPriceWithTimeOfferReceivedSection({
    super.key,
    required this.offersReceivedModel,
  });

  final OffersReceivedModel offersReceivedModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              offersReceivedModel.logoEth,
            ),
            Text(
              offersReceivedModel.ethPrice,
              style: TextStyles.font15DarkBlueMedium,
            ),
          ],
        ),
        Text(
          offersReceivedModel.time,
          style: TextStyles.font13BlueRegular.copyWith(
            fontWeight: FontWeight.w200,
          ),
        ),
      ],
    );
  }
}
