import 'dart:math' show Random;

import 'package:flutter/foundation.dart';

import '../../models/meal_model.dart';
import '../../models/meat_nutrition_model.dart';
import '../../utils/constants/app_constants.dart';

class MealsController extends ChangeNotifier {
  MealsController() : _meals = AppConstants.mealsList;
  final List<MealModel> _meals;
  List<MealModel> get meals => _meals;

  void addNutration(int index) {
    final randomIndex = Random().nextInt(AppConstants.nutritionsList.length);
    _meals[index] = _meals[index].copyWith(
      meatNutritions: [
        ..._meals[index].meatNutritions,
        AppConstants.nutritionsList[randomIndex],
      ],
    );
    notifyListeners();
  }

  void deleteNutration(
      {required int mealIndex, required MeatNutritionModel meatNutrition}) {
    // This is for calling selector on metaNutritions because simple remove method is not calling
    // Reference to be changed in order to triger selector builder.
    final updatedList = _meals[mealIndex].meatNutritions.toList();
    updatedList.remove(meatNutrition);
    _meals[mealIndex] = _meals[mealIndex].copyWith(meatNutritions: [
      ...updatedList,
    ], isEdit: updatedList.isEmpty ? false : _meals[mealIndex].isEdit);
    notifyListeners();
  }

  void editOrSave(int index) {
    _meals[index] = _meals[index].copyWith(isEdit: !_meals[index].isEdit);
    notifyListeners();
  }

  int totalCalories(int index) {
    int total = 0;
    for (var item in _meals[index].meatNutritions) {
      total += item.calories;
    }
    return total;
  }
}
