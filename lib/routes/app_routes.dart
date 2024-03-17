import 'package:flutter/material.dart';
import '../presentation/droppers_one_screen/droppers_one_screen.dart';
import '../presentation/droppers_two_screen/droppers_two_screen.dart';
import '../presentation/droppers_three_screen/droppers_three_screen.dart';
import '../presentation/droppers_five_screen/droppers_five_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String droppersOneScreen = '/droppers_one_screen';

  static const String droppersTwoScreen = '/droppers_two_screen';

  static const String droppersThreeScreen = '/droppers_three_screen';

  static const String droppersFiveScreen = '/droppers_five_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        droppersOneScreen: DroppersOneScreen.builder,
        droppersTwoScreen: DroppersTwoScreen.builder,
        droppersThreeScreen: DroppersThreeScreen.builder,
        droppersFiveScreen: DroppersFiveScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: DroppersOneScreen.builder
      };
}
