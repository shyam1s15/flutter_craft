import 'package:flutter_craft/screens/dashboard_screen.dart';
import 'package:flutter_craft/widgets/HorizontalCategoriesView.dart';
import 'package:flutter_craft/widgets/SplashButton.dart';
import 'package:flutter_craft/widgets/ToggleAnimatedIconButton.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String DASHBOARD = '/';
  static const String SPLASH_BUTTON = '/splash-button';
  static const String HORIZONTAL_CATEGORY_LIST = '/horizontal-category-list';

  static final routes = [
    GetPage(name: DASHBOARD, page: () => DashBoardScreen(
      displayWidget: ToggleAnimatedIconButtonWithData(),
      displayWidgetCode: ToggleAnimatedIconButtonDisplayCode.displayCode(),
    )),
    GetPage(name: SPLASH_BUTTON, page: () => DashBoardScreen(
      displayWidget: SplashButtonWithData(),
      displayWidgetCode: SplashButtonCode.displayCode(),
    )),
    GetPage(name: HORIZONTAL_CATEGORY_LIST, page: () => DashBoardScreen(
      displayWidget: HorizontalCategoriesView(),
      displayWidgetCode: HorizontalCategoriesCode.displayCode(),
    )),
    //GetPage(name: OTHER, page: () => OtherScreen()),
  ];
}
