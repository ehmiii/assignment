import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controllers/meals/meals_controller.dart';
import '../../../utils/colors/app_colors.dart';

class AddMeatNutritionButton extends StatelessWidget {
  const AddMeatNutritionButton({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: GestureDetector(
        onTap: () {
          context.read<MealsController>().addNutration(index);
        },
        child: Container(
          padding: const EdgeInsets.only(
            left: 4,
            bottom: 4,
            right: 0,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(
                10,
              ),
              bottomRight: Radius.circular(
                6,
              ),
            ),
            color: AppColors.primaryBackgroundColor,
          ),
          child: Container(
            width: 50,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  6,
                ),
                bottomLeft: Radius.circular(
                  10,
                ),
                bottomRight: Radius.circular(
                  6,
                ),
              ),
              color: AppColors.primaryColor,
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
