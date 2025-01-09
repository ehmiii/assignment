import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';

class MealIconContainer extends StatelessWidget {
  const MealIconContainer({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        15,
      ),
      child: ColoredBox(
        color: AppColors.primaryBackgroundColor,
        child: SizedBox(
          width: 70,
          height: 70,
          child: Center(
            child: Icon(
              icon,
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
