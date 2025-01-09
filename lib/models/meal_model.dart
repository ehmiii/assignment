import 'package:flutter/material.dart' show IconData;

import 'meat_nutrition_model.dart';

class MealModel {
  final String name;
  final IconData icon;
  final bool isEdit;
  final List<MeatNutritionModel> meatNutritions;
  MealModel({
    required this.icon,
    required this.meatNutritions,
    required this.name,
    this.isEdit = false,
  });
  MealModel copyWith({
    String? name,
    IconData? icon,
    bool? isEdit,
    List<MeatNutritionModel>? meatNutritions,
  }) =>
      MealModel(
        name: name ?? this.name,
        icon: icon ?? this.icon,
        isEdit: isEdit ?? this.isEdit,
        meatNutritions: meatNutritions ?? this.meatNutritions,
      );
}
