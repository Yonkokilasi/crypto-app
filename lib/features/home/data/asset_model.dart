class AssetModel {
  final String id;
  final String symbol;
  final String name;
  final String image;
  final int currentPrice;
  final int marketCap;
  final int marketCapRank;
  final int fullyDilutedValuation;
  final int totalVolume;
  final int high24h;
  final int low24h;
  final double priceChange24h;
  final double priceChangePercentage24h;
  final int marketCapChange24h;
  final double marketCapChangePercentage24h;
  final int circulatingSupply;
  final int totalSupply;
  final int maxSupply;
  final int ath;
  final double athChangePercentage;
  final String athDate;
  final double atl;
  final double atlChangePercentage;
  final String atlDate;
  final dynamic roi; // Could be null or have different types
  final String lastUpdated;
  
  static List<AssetModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => AssetModel.fromJson(json)).toList();
  }

  AssetModel({
    required this.id,
    required this.symbol,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.marketCap,
    required this.marketCapRank,
    required this.fullyDilutedValuation,
    required this.totalVolume,
    required this.high24h,
    required this.low24h,
    required this.priceChange24h,
    required this.priceChangePercentage24h,
    required this.marketCapChange24h,
    required this.marketCapChangePercentage24h,
    required this.circulatingSupply,
    required this.totalSupply,
    required this.maxSupply,
    required this.ath,
    required this.athChangePercentage,
    required this.athDate,
    required this.atl,
    required this.atlChangePercentage,
    required this.atlDate,
    this.roi,
    required this.lastUpdated,
  });

  factory AssetModel.fromJson(Map<String, dynamic> json) {
    return AssetModel(
      id: json['id'],
      symbol: json['symbol'],
      name: json['name'],
      image: json['image'],
      currentPrice: json['current_price'],
      marketCap: json['market_cap'],
      marketCapRank: json['market_cap_rank'],
      fullyDilutedValuation: json['fully_diluted_valuation'],
      totalVolume: json['total_volume'],
      high24h: json['high_24h'],
      low24h: json['low_24h'],
      priceChange24h: json['price_change_24h'].toDouble(),
      priceChangePercentage24h: json['price_change_percentage_24h'].toDouble(),
      marketCapChange24h: json['market_cap_change_24h'],
      marketCapChangePercentage24h:
          json['market_cap_change_percentage_24h'].toDouble(),
      circulatingSupply: json['circulating_supply'],
      totalSupply: json['total_supply'],
      maxSupply: json['max_supply'],
      ath: json['ath'],
      athChangePercentage: json['ath_change_percentage'].toDouble(),
      athDate: json['ath_date'],
      atl: json['atl'].toDouble(),
      atlChangePercentage: json['atl_change_percentage'].toDouble(),
      atlDate: json['atl_date'],
      roi: json['roi'],
      lastUpdated: json['last_updated'],
    );
  }
}
