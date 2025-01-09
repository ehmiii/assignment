import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../controllers/meals/meals_controller.dart';
import '../../../models/meat_nutrition_model.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../utils/extensions/num_extensions.dart';

class EditOrSaveButtons extends StatelessWidget {
  const EditOrSaveButtons({
    super.key,
    required this.mealIndex,
  });

  final int mealIndex;

  @override
  Widget build(BuildContext context) {
    return Selector<MealsController, List<MeatNutritionModel>>(
      selector: (_, controller) => controller.meals[mealIndex].meatNutritions,
      builder: (context, meatNutritionsList, _) {
        return meatNutritionsList.isEmpty
            ? Container(
                decoration: BoxDecoration(
                  color: AppColors.ashGray,
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 2,
                ),
                child: const Text(
                  "No Products",
                ),
              )
            : Row(
                children: [
                  Selector<MealsController, bool>(
                    selector: (_, controller) =>
                        controller.meals[mealIndex].isEdit,
                    builder: (context, isEdit, _) {
                      return GestureDetector(
                        onTap: () {
                          context.read<MealsController>().editOrSave(mealIndex);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              75,
                            ),
                            border: Border.all(
                              color: AppColors.softSageGreen,
                            ),
                          ),
                          child: Text(isEdit ? 'Save' : 'Edit'),
                        ),
                      );
                    },
                  ),
                  5.horizontalSpace,
                  Icon(
                    CupertinoIcons.bookmark,
                    color: AppColors.primaryColor,
                    size: 20,
                  )
                ],
              );
      },
    );
  }
}

