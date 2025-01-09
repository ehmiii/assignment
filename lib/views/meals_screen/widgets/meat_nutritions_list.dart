import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/meals/meals_controller.dart';
import '../../../models/meat_nutrition_model.dart';
import '../../../utils/colors/app_colors.dart';
import 'meat_nutrition_details_container.dart';

class MeatNutritionsList extends StatelessWidget {
  const MeatNutritionsList({
    super.key,
    required this.mealIndex,
  });

  final int mealIndex;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
      child: ColoredBox(
        color: AppColors.primaryBackgroundColor,
        child: Selector<MealsController, List<MeatNutritionModel>>(
            selector: (_, controller) =>
                controller.meals[mealIndex].meatNutritions,
            builder: (context, meatNutritionsList, _) {
              return meatNutritionsList.isEmpty
                  ? const SizedBox()
                  : ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: meatNutritionsList.length + 1,
                      itemBuilder: (context, index) =>
                          MeatNutritionDetailsContainer(
                        meatNutritionIndex: index,
                        mealIndex: mealIndex,
                      ),
                    );
            }),
      ),
    );
  }
}
