import 'package:flutter/material.dart';
import 'package:mood_diary/presentation/main_page/main_page.dart';
import 'package:mood_diary/presentation/navigation_screen/app_navigation_screen.dart';
import 'package:mood_diary/presentation/tap_container_screen/tap_container_screen.dart';
import 'package:mood_diary/widgets/app_bar/custom_app_bar.dart';
import '../core/app_export.dart';

class AppRoutes {
  static const String tabContainerScreen = '/tab_container_screen';
  static const String calendarSScreen = '/calendar_screen';
  static const String calendarScreen = '/calendar2_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    initialRoute: (context) => const TabContainerScreen(),
    calendarScreen: (context) => const TabContainerScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen(),
    tabContainerScreen: (context) => const TabContainerScreen(),
  };
}