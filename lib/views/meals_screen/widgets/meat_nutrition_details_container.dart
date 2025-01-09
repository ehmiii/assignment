import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/meals/meals_controller.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/extensions/num_extensions.dart';
import 'delete_meat_nutrition_button.dart';

class MeatNutritionDetailsContainer extends StatelessWidget {
  const MeatNutritionDetailsContainer({
    super.key,
    required this.meatNutritionIndex,
    required this.mealIndex,
  });
  final int meatNutritionIndex;
  final int mealIndex;

  @override
  Widget build(BuildContext context) {
    final controller = context.read<MealsController>();
    final meatNutrition =
        controller.meals[mealIndex].meatNutritions.length == meatNutritionIndex
            ? null
            : controller.meals[mealIndex].meatNutritions[meatNutritionIndex];
    return Container(
      width: 100,
      height: 60,
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.white,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              meatNutrition?.meatName ?? 'Total',
              style: TextStyle(
                fontWeight:
                    meatNutrition == null ? FontWeight.w600 : FontWeight.w500,
                color: meatNutrition == null
                    ? AppColors.softSageGreen.withOpacity(.7)
                    : AppColors.primaryColor.withOpacity(.5),
              ),
            ),
          ),
          10.horizontalSpace,
          Text(
            meatNutrition == null
                ? "${controller.totalCalories(mealIndex)}"
                : "${meatNutrition.calories} Cals",
             style: TextStyle(
                fontWeight:
                    meatNutrition == null ? FontWeight.w600 : FontWeight.w500,
                color: meatNutrition == null
                    ? AppColors.softSageGreen.withOpacity(.7)
                    : AppColors.primaryColor,
              ),
          ),
          if (meatNutrition != null) 10.horizontalSpace else 30.horizontalSpace,
          if (meatNutrition != null)
            DeleteMeatNutritionButton(
                mealIndex: mealIndex, meatNutrition: meatNutrition),
        ],
      ),
    );
  }
}
