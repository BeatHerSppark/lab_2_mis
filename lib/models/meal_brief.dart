class MealBrief {
  final String id;
  final String name;
  final String thumb;
  final String? category;


  MealBrief({
    required this.id,
    required this.name,
    required this.thumb,
    this.category,
  });


  factory MealBrief.fromJson(Map<String, dynamic> json) {
    return MealBrief(
      id: json['idMeal'] as String? ?? '',
      name: json['strMeal'] as String? ?? '',
      thumb: json['strMealThumb'] as String? ?? '',
      category: json['strCategory'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'idMeal': id,
    'strMeal': name,
    'strMealThumb': thumb,
    'strCategory': category,
  };
}