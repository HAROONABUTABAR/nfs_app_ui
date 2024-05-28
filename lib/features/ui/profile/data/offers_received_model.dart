class OffersReceivedModel {
  final String images;
  final String logoEth;
  final String time;
  final String name;
  final String ethPrice;
  final String usdPrice;
  final String floor;
  final String from;
  final String expiration;

  OffersReceivedModel({
    required this.images,
    required this.name,
    required this.ethPrice,
    required this.usdPrice,
    required this.floor,
    required this.from,
    required this.expiration,
    required this.time,
    required this.logoEth,
  });
}
