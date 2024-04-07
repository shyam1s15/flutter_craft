import 'package:flutter_craft/pages/OnBoardingPage.dart';
import 'package:flutter_craft/pages/OnBoaringPage2.dart';
import 'package:flutter_craft/pages/ProfilePage1.dart';
import 'package:flutter_craft/pages/SectionedSettingPage.dart';
import 'package:flutter_craft/screens/about_me.dart';
import 'package:flutter_craft/screens/dashboard_screen.dart';
import 'package:flutter_craft/widgets/BottomNavBarCurvedFb1.dart';
import 'package:flutter_craft/widgets/HorizontalCategoriesView.dart';
import 'package:flutter_craft/widgets/LoadingAnimatedButton.dart';
import 'package:flutter_craft/widgets/NoInternetAlertWidget.dart';
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
  static const String BOTTOM_CURVED_NAV_BAR = "/bottom-curved-nav-bar";
  static const String NO_INTERNET_WIDGET = "/no-internet-widget";
  static const String ABOUT_ME = "/about-me";
  static const String ON_BOARDING_PAGE = "/on-boarding-page";
  static const String ON_BOARDING_PAGE2 = "/on-boarding-page2";
  static const String PROFILE_PAGE1 = "/profile-page1";
  static const String SECTIONED_SETTING_PAGE = "/sectioned-setting-page";

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
    GetPage(name: BOTTOM_CURVED_NAV_BAR, page: () => DashBoardScreen(
      displayWidget: BottomNavBarCurvedData(),
      displayWidgetCode: BottomNavBarCurvedCode.displayCode(),
      widgetName: "Bottom Curved nav bar",
    )),
    GetPage(name: NO_INTERNET_WIDGET, page: () => DashBoardScreen(
      displayWidget: NoInternetWidgetData(),
      displayWidgetCode: NoInternetWidgetCode.displayCode(),
      widgetName: "No internet alert widget",
    )),
    GetPage(name: ABOUT_ME, page: () => AboutMeScreen(
      // displayWidget: NoInternetWidgetData(),
      // displayWidgetCode: NoInternetWidgetCode.displayCode(),
      // widgetName: "No internet alert widget",
    )),
    GetPage(name: ON_BOARDING_PAGE, page: () => DashBoardScreen(
      displayWidget: ConcentricAnimationOnboarding(),
      displayWidgetCode: ConcentricAnimationOnboardingData().displayCode(),
      widgetName: "On Boarding Page",
    )),
    GetPage(name: ON_BOARDING_PAGE2, page: () => DashBoardScreen(
      displayWidget: OnboardingPage2(),
      displayWidgetCode: OnboardingPage2Data().displayCode(),
      widgetName: "On Boarding Page",
    )),
    GetPage(name: PROFILE_PAGE1, page: () => DashBoardScreen(
      displayWidget: ProfilePage1(),
      displayWidgetCode: ProfilePage1Data().displayCode(),
      widgetName: "Profile Page",
    )),
    GetPage(name: SECTIONED_SETTING_PAGE, page: () => DashBoardScreen(
      displayWidget: SectionedSettingsPage(),
      displayWidgetCode: SectionedSettingPageData().displayCode(),
      widgetName: "Profile Page",
    )),
  ];
}
