class Cocktail {
  final String idDrink;
  final String drinkName;
  final String drinkThumbnail;

  Cocktail({
    required this.idDrink,
    required this.drinkName,
    required this.drinkThumbnail,
  });

  factory Cocktail.fromJson(Map<String, dynamic> json) {
    return Cocktail(
      idDrink: json['idDrink'],
      drinkName: json['strDrink'],
      drinkThumbnail: json['strDrinkThumb'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idDrink': idDrink,
      'strDrink': drinkName,
      'strDrinkThumb': drinkThumbnail,
    };
  }

  @override
  String toString() {
    return 'Cocktail(idDrink: $idDrink, strDrink: $drinkName, strDrinkThumb: $drinkThumbnail)';
  }
}