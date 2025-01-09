import 'package:flutter/material.dart';

import '../../../utils/extensions/num_extensions.dart';
import '../../../utils/styles/font_styles.dart';
import 'edit_or_save_buttons.dart';

class MealNameTagAndEditOrSaveButtons extends StatelessWidget {
  const MealNameTagAndEditOrSaveButtons({
    super.key,
    required this.mealName,
    required this.mealIndex,
  });

  final String mealName;
  final int mealIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mealName,
          style: FontStyles.titleStyle,
        ),
        3.verticalSpace,
        EditOrSaveButtons(mealIndex: mealIndex),
      ],
    );
  }
}
