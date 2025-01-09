import 'package:flutter/cupertino.dart';
import '../../models/meat_nutrition_model.dart';

import '../../models/meal_model.dart';
import '../../services/app_state_services.dart';

class AppConstants {
  static double get statusBarHeight =>
      MediaQuery.paddingOf(AppStateService.context).top;
  static EdgeInsets get screenMainPadding => EdgeInsets.only(
        top: statusBarHeight + 20,
        left: 30,
        right: 30,
        bottom: 0,
      );

  static List<MealModel> get mealsList => [
        MealModel(
          icon: CupertinoIcons.sun_haze_fill,
          meatNutritions: [],
          name: 'Meal One',
        ),
        MealModel(
          icon: CupertinoIcons.square_fill_on_square_fill,
          meatNutritions: [],
          name: 'Meal Two',
        ),
        MealModel(
          icon: CupertinoIcons.sun_min_fill,
          meatNutritions: [],
          name: 'Meal Three',
        ),
        MealModel(
          icon: CupertinoIcons.sun_haze_fill,
          meatNutritions: [],
          name: 'Meal Four',
        ),
        MealModel(
          icon: CupertinoIcons.moon_fill,
          meatNutritions: [],
          name: 'Meal Five',
        ),
        MealModel(
          icon: CupertinoIcons.moon_stars_fill,
          meatNutritions: [],
          name: 'Meal Six',
        ),
      ];
  static List<MeatNutritionModel> get nutritionsList => [
        MeatNutritionModel(meatName: 'Spicy Bacon Cheese Toast', calories: 312),
        MeatNutritionModel(meatName: 'Almond Milk', calories: 312),
        MeatNutritionModel(meatName: 'Chicken Breast', calories: 165),
        MeatNutritionModel(meatName: 'Ground Beef', calories: 250),
        MeatNutritionModel(meatName: 'Turkey', calories: 135),
        MeatNutritionModel(meatName: 'Pork Chop', calories: 206),
        MeatNutritionModel(meatName: 'Salmon', calories: 208),
        MeatNutritionModel(meatName: 'Tuna', calories: 132),
        MeatNutritionModel(meatName: 'Lamb', calories: 294),
        MeatNutritionModel(meatName: 'Duck', calories: 337),
        MeatNutritionModel(meatName: 'Shrimp', calories: 99),
        MeatNutritionModel(meatName: 'Crab', calories: 87),
        MeatNutritionModel(meatName: 'Lobster', calories: 89),
        MeatNutritionModel(meatName: 'Cod', calories: 82),
        MeatNutritionModel(meatName: 'Tilapia', calories: 96),
        MeatNutritionModel(meatName: 'Venison', calories: 158),
        MeatNutritionModel(meatName: 'Ham', calories: 145),
        MeatNutritionModel(meatName: 'Bacon', calories: 43),
        MeatNutritionModel(meatName: 'Sausage', calories: 290),
        MeatNutritionModel(meatName: 'Egg (large)', calories: 78),
        MeatNutritionModel(meatName: 'Tofu', calories: 94),
        MeatNutritionModel(meatName: 'Beef Steak', calories: 271),
      ];
}
