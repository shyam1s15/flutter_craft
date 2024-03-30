import 'package:flutter_craft/screens/dashboard_screen.dart';
import 'package:flutter_craft/widgets/HorizontalCategoriesView.dart';
import 'package:flutter_craft/widgets/LoadingAnimatedButton.dart';
import 'package:flutter_craft/widgets/RoundedBadge.dart';
import 'package:flutter_craft/widgets/SplashButton.dart';
import 'package:flutter_craft/widgets/ToggleAnimatedIconButton.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String DASHBOARD = '/';
  static const String SPLASH_BUTTON = '/splash-button';
  static const String HORIZONTAL_CATEGORY_LIST = '/horizontal-category-list';
  static const String ROUNDED_BADGE = "/rounded-badge";
  static const String ANIMATED_LOADING_BUTTON = "/animated-loading-button";

  static final routes = [
    GetPage(name: DASHBOARD, page: () => DashBoardScreen(
      displayWidget: ToggleAnimatedIconButtonWithData(),
      displayWidgetCode: ToggleAnimatedIconButtonDisplayCode.displayCode(),
      widgetName: "Toggle Button",
    )),
    GetPage(name: SPLASH_BUTTON, page: () => DashBoardScreen(
      displayWidget: SplashButtonWithData(),
      displayWidgetCode: SplashButtonCode.displayCode(),
      widgetName: "Splash Button",
    )),
    GetPage(name: HORIZONTAL_CATEGORY_LIST, page: () => DashBoardScreen(
      displayWidget: HorizontalCategoriesView(),
      displayWidgetCode: HorizontalCategoriesCode.displayCode(),
      widgetName: "Horizontal Category List",
    )),
    GetPage(name: ROUNDED_BADGE, page: () => DashBoardScreen(
      displayWidget: RoundedBadgeData(),
      displayWidgetCode: RoundedBadgeCode.displayCode(),
      widgetName: "Rounded Badge",
    )),
    GetPage(name: ANIMATED_LOADING_BUTTON, page: () => DashBoardScreen(
      displayWidget: LoadingAnimatedButtonData(),
      displayWidgetCode: LoadingAnimatedButtonCode.displayCode(),
      widgetName: "Animated Loading Button",
    )),
  ];
}
