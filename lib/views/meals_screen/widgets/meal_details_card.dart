import 'package:flutter/material.dart';
import '../../../utils/extensions/num_extensions.dart';
import 'package:provider/provider.dart';

import '../../../controllers/meals/meals_controller.dart';
import '../../../utils/colors/app_colors.dart';
import 'add_meat_nutrition_button.dart';
import 'meal_icon_container.dart';
import 'meal_name_tag_and_edit_or_save_buttons.dart';
import 'meat_nutritions_list.dart';

class MealDetailsCard extends StatelessWidget {
  const MealDetailsCard({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    final meal = context.read<MealsController>().meals[index];
    return Padding(
      padding: EdgeInsets.only(top: index == 0 ? 0.0 : 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          20,
        ),
        child: Stack(
          children: [
            ColoredBox(
              color: AppColors.white,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        MealIconContainer(icon: meal.icon),
                        10.horizontalSpace,
                        MealNameTagAndEditOrSaveButtons(
                          mealName: meal.name,
                          mealIndex: index,
                        ),
                      ],
                    ),
                    10.verticalSpace,
                    MeatNutritionsList(
                      mealIndex: index,
                    ),
                  ],
                ),
              ),
            ),
            AddMeatNutritionButton(
              index: index,
            ),
          ],
        ),
      ),
    );
  }
}
