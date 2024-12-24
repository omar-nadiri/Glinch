class CocktailDetails {
  final String idDrink;
  final String drinkName;
  final String? drinkAlternate;
  final String? tags;
  final String? video;
  final String category;
  final String? iba;
  final String alcoholic;
  final String glass;
  final String instructions;
  final String? instructionsES;
  final String? instructionsDE;
  final String? instructionsFR;
  final String? instructionsIT;
  final String? instructionsZhHans;
  final String? instructionsZhHant;
  final String drinkThumbnail;
  final List<String?> ingredients;
  final List<String?> measures;
  final String? imageSource;
  final String? imageAttribution;
  final String? creativeCommonsConfirmed;
  final String? dateModified;

  CocktailDetails({
    required this.idDrink,
    required this.drinkName,
    this.drinkAlternate,
    this.tags,
    this.video,
    required this.category,
    this.iba,
    required this.alcoholic,
    required this.glass,
    required this.instructions,
    this.instructionsES,
    this.instructionsDE,
    this.instructionsFR,
    this.instructionsIT,
    this.instructionsZhHans,
    this.instructionsZhHant,
    required this.drinkThumbnail,
    required this.ingredients,
    required this.measures,
    this.imageSource,
    this.imageAttribution,
    this.creativeCommonsConfirmed,
    this.dateModified,
  });

  factory CocktailDetails.fromJson(Map<String, dynamic> json) {
    // Extract ingredients and measures
    final List<String?> ingredients = List.generate(
      15,
          (index) => json['strIngredient${index + 1}'] as String?,
    );

    final List<String?> measures = List.generate(
      15,
          (index) => json['strMeasure${index + 1}'] as String?,
    );

    return CocktailDetails(
      idDrink: json['idDrink'],
      drinkName: json['strDrink'],
      drinkAlternate: json['strDrinkAlternate'],
      tags: json['strTags'],
      video: json['strVideo'],
      category: json['strCategory'],
      iba: json['strIBA'],
      alcoholic: json['strAlcoholic'],
      glass: json['strGlass'],
      instructions: json['strInstructions'],
      instructionsES: json['strInstructionsES'],
      instructionsDE: json['strInstructionsDE'],
      instructionsFR: json['strInstructionsFR'],
      instructionsIT: json['strInstructionsIT'],
      instructionsZhHans: json['instructionsZhHans'],
      instructionsZhHant: json['instructionsZhHant'],
      drinkThumbnail: json['strDrinkThumb'],
      ingredients: ingredients,
      measures: measures,
      imageSource: json['strImageSource'],
      imageAttribution: json['strImageAttribution'],
      creativeCommonsConfirmed: json['strCreativeCommonsConfirmed'],
      dateModified: json['dateModified'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'idDrink': idDrink,
      'strDrink': drinkName,
      'strDrinkAlternate': drinkAlternate,
      'strTags': tags,
      'strVideo': video,
      'strCategory': category,
      'strIBA': iba,
      'strAlcoholic': alcoholic,
      'strGlass': glass,
      'strInstructions': instructions,
      'strInstructionsES': instructionsES,
      'strInstructionsDE': instructionsDE,
      'strInstructionsFR': instructionsFR,
      'strInstructionsIT': instructionsIT,
      'strInstructionsZH-instructionsZhHans': instructionsZhHans,
      'instructionsZhHant': instructionsZhHant,
      'strDrinkThumb': drinkThumbnail,
      'strImageSource': imageSource,
      'strImageAttribution': imageAttribution,
      'strCreativeCommonsConfirmed': creativeCommonsConfirmed,
      'dateModified': dateModified,
    };

    for (int i = 0; i < 15; i++) {
      data['strIngredient${i + 1}'] = ingredients[i];
      data['strMeasure${i + 1}'] = measures[i];
    }

    return data;
  }

  @override
  String toString() {
    return 'Cocktail(idDrink: $idDrink, drinkName: $drinkName, category: $category, alcoholic: $alcoholic, glass: $glass, instructions: $instructions, ingredients: $ingredients, measures: $measures)';
  }
}