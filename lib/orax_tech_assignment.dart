import 'package:flutter/material.dart';

import 'routes/routes_details.dart';
import 'routes/routes_names.dart';
import 'services/app_state_services.dart';

class OraxTechAssignment extends StatelessWidget {
  const OraxTechAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RoutesDetails.routes,
      navigatorKey: AppStateService.navigatorKey,
      initialRoute: RoutesNames().mealsScreen,
    );
  }
}
