import 'package:flutter/material.dart';
import '../../../../../../core/theming/styles.dart';
import '../../../data/offers_received_model.dart';
import 'eth_price_with_time_offer_received_section.dart';

class ImageWithNameWithPriceEthOfferReceivedSection extends StatelessWidget {
  const ImageWithNameWithPriceEthOfferReceivedSection({
    super.key,
    required this.offersReceivedModel,
  });

  final OffersReceivedModel offersReceivedModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          offersReceivedModel.images,
        ),
        Text(
          offersReceivedModel.name,
          style: TextStyles.font16WhiteSemiBold,
        ),
        EthPriceWithTimeOfferReceivedSection(
          offersReceivedModel: offersReceivedModel,
        ),
      ],
    );
  }
}
