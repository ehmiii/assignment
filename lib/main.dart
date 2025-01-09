import 'package:flutter/material.dart';

import 'orax_tech_assignment.dart';
import 'utils/common_methods/app_configuration.dart';

void main() async {
  await AppConfiguration.appConfiguration();
  runApp(const OraxTechAssignment());
}
