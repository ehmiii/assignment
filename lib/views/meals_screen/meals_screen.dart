import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/meals/meals_controller.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/constants/app_constants.dart';
import '../core_widgets/custom_app_bar/custom_app_bar.dart';
import 'widgets/meal_details_card.dart';
 

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBackgroundColor,
      body: Padding(
        padding: AppConstants.screenMainPadding.copyWith(
          right: 25,
        ),
        child: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: ListView.builder(
                itemCount: context.read<MealsController>().meals.length,
                itemBuilder: (context, index) => MealDetailsCard(
                  index: index,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


