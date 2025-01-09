
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/meals/meals_controller.dart';
import '../../../models/meat_nutrition_model.dart';
import '../../../utils/colors/app_colors.dart';

class DeleteMeatNutritionButton extends StatelessWidget {
  const DeleteMeatNutritionButton({
    super.key,
    required this.mealIndex,
    required this.meatNutrition,
  });

  final int mealIndex;
  final MeatNutritionModel meatNutrition;

  @override
  Widget build(BuildContext context) {
    return Selector<MealsController, bool>(
      selector: (_, controller) => controller.meals[mealIndex].isEdit,
      builder: (context, isEdit, _) {
        return GestureDetector(
          onTap: () {
            if (isEdit) {
              context.read<MealsController>().deleteNutration(
                    mealIndex: mealIndex,
                    meatNutrition: meatNutrition,
                  );
            }
          },
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isEdit ? AppColors.reddishPink : AppColors.mutedCocoaBrown,
            ),
            padding: const EdgeInsets.all(3),
            child: Icon(
              isEdit ? Icons.close_sharp : Icons.arrow_forward_rounded,
              color: AppColors.white,
              size: 13,
            ),
          ),
        );
      },
    );
  }
}
