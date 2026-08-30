class TravelCardsListModel {
  TravelCardsListModel({
    required this.id,
    required this.imagePath,
    required this.placeName,
    required this.cityName,
    required this.countryName,
    required this.cardRaiting,
    required this.isFavorite,
  });

  int id;
  String imagePath;
  String placeName;
  String cityName;
  String countryName;
  double cardRaiting;
  bool isFavorite;
}
