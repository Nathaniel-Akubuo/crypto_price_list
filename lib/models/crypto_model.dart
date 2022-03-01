class CryptoModel {
  String name;
  String image;
  double currentPrice;
  double priceChangePercentage;
  String lastUpdated;

  CryptoModel({
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.priceChangePercentage,
    required this.lastUpdated,
  });


  factory CryptoModel.fromMap(Map<String, dynamic> map) {
    return CryptoModel(
      name: map['name'] as String,
      image: map['image'] as String,
      currentPrice: map['current_price'].toDouble(),
      priceChangePercentage: map['price_change_percentage_24h'].toDouble(),
      lastUpdated: map['last_updated'] as String,
    );
  }
}
