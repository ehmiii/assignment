import 'package:flutter/material.dart';
import 'routes_paths.dart';
import '../views/meals_screen/meals_screen.dart';
import 'package:provider/provider.dart';

import '../controllers/meals/meals_controller.dart';

class RoutesDetails {
  static Map<String, WidgetBuilder> get routes => {
        RoutesPath().mealsScreen: (context) =>
            ChangeNotifierProvider<MealsController>(
              create: (_) => MealsController(),
              builder: (context, _) => const MealsScreen(),
            ),
      };
}
