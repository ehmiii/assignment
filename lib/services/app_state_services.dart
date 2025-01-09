import 'package:flutter/material.dart';

class AppStateService {
  ///GLOBAL NAVIGATOR KEY
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static BuildContext get context => navigatorKey.currentState!.context;
}
