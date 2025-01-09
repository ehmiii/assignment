import 'package:flutter/material.dart';

import '../../../utils/styles/font_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Meals',
            style: FontStyles.titleStyle,
          ),
        ),
        const Icon(Icons.more_horiz)
      ],
    );
  }
}
