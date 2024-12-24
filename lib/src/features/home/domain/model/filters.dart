class Filters {
  final String? strCategory;
  final String? strIngredient1;

  Filters({
    required this.strCategory,
    required this.strIngredient1,
  });

  factory Filters.fromJson(Map<String, dynamic> json) {
    return Filters(
      strCategory: json['strCategory'],
      strIngredient1: json['strIngredient1'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'strCategory': strCategory,
      'strIngredient1': strIngredient1,
    };
  }

  @override
  String toString() {
    return 'Filters(strCategory: $strCategory, strIngredient1: $strIngredient1)';
  }
}