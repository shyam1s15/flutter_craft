import 'package:flutter_craft/pages/OnBoardingPage.dart';
import 'package:flutter_craft/pages/OnBoaringPage2.dart';
import 'package:flutter_craft/pages/ProfilePage1.dart';
import 'package:flutter_craft/pages/SectionedSettingPage.dart';
import 'package:flutter_craft/pages/SimpleSettingsPage.dart';
import 'package:flutter_craft/screens/about_me.dart';
import 'package:flutter_craft/screens/dashboard_screen.dart';
import 'package:flutter_craft/widgets/AnimatedDefaultTextWidget.dart';
import 'package:flutter_craft/widgets/AnimatedListWidget.dart';
import 'package:flutter_craft/widgets/AnimatedOpacityWidget.dart';
import 'package:flutter_craft/widgets/AnimatedSwitcherWidget.dart';
import 'package:flutter_craft/widgets/BottomNavBarCurvedFb1.dart';
import 'package:flutter_craft/widgets/ClipOvalWidget.dart';
import 'package:flutter_craft/widgets/ClipPathWidget.dart';
import 'package:flutter_craft/widgets/ClipRRectWidget.dart';
import 'package:flutter_craft/widgets/DecoratedBoxTransitionWidget.dart';
import 'package:flutter_craft/widgets/DismissibleWidget.dart';
import 'package:flutter_craft/widgets/HorizontalCategoriesView.dart';
import 'package:flutter_craft/widgets/LoadingAnimatedButton.dart';
import 'package:flutter_craft/widgets/NoInternetAlertWidget.dart';
import 'package:flutter_craft/widgets/PopupMenuButtonWidget.dart';
import 'package:flutter_craft/widgets/RadioListTileWidget.dart';
import 'package:flutter_craft/widgets/ReOrderableList.dart';
import 'package:flutter_craft/widgets/RoundedBadge.dart';
import 'package:flutter_craft/widgets/SimpleTabbarWidget.dart';
import 'package:flutter_craft/widgets/SplashButton.dart';
import 'package:flutter_craft/widgets/StepperWidget.dart';
import 'package:flutter_craft/widgets/ToggleAnimatedIconButton.dart';
import 'package:flutter_craft/widgets/ToolTipWidget.dart';
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
  static const String SIMPLE_SETTINGS_PAGE = "/simple-settings-page";
  static const String DECORATED_BOX_TRANSITION = "/decorated-box-transition";
  static const String POPUP_MENU_BUTTON_WIDGET = "/popup-menu-button-widet";
  static const String RADIO_LIST_TILE_WIDGET = "/radio-list-tile";
  static const String STEPPER_WIDGET = "/stepper-widget";
  static const String SIMPLE_TABBAR = "/simple-tabbar";
  static const String TOOL_TIP_WIDGET = "/tool-tip-widget";
  static const String REDORDERABLE_LIST = "/re-ordeable-list-widget";
  static const String ANIMATED_DEFAULT_TEXT_WIDGET = "/animated-default-widget";
  static const String ANIMTED_LIST_WIDGET = "/animated-list-widget";
  static const String ANIMATED_OPACITY_WIDGET = "/animated-opacity-widget";
  static const String ANIMATED_SWITCHER_WIDGET = "/animated-switcher-widget";
  static const String CLIP_OVAL_WIDGET = "/clip-oval-widget";
  static const String CLIP_PATH_WIDGET = "/clip-path-widget";
  static const String CLIP_R_RECT_WIDGET = "/clip-r-rect-widget";
  static const String DISMISSIBLE_WIDGET = "/dismissible-widget";

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
      widgetName: "Sectioned Settings Page",
    )),
    GetPage(name: SIMPLE_SETTINGS_PAGE, page: () => DashBoardScreen(
      displayWidget: SimpleSettingsPage2(),
      displayWidgetCode: SectionedSettingPageData().displayCode(),
      widgetName: "Simple Settings Page",
    )),
    GetPage(name: DECORATED_BOX_TRANSITION, page: () => DashBoardScreen(
      displayWidget: DecoratedBoxTransitionWidget(),
      displayWidgetCode: DecoratedBoxTransitionWidgetCode().displayCode(),
      widgetName: "Decorated Transitioned Page",
    )),
    GetPage(name: POPUP_MENU_BUTTON_WIDGET, page: () => DashBoardScreen(
      displayWidget: PopupMenuButtonWidget(),
      displayWidgetCode: PopupMenuButtonWidgetCode().displayCode(),
      widgetName: "Popup menu button widget",
    )),
    GetPage(name: RADIO_LIST_TILE_WIDGET, page: () => DashBoardScreen(
      displayWidget: RatioListTileWidget(),
      displayWidgetCode: RatioListTileWidgetCode().displayCode(),
      widgetName: "Radio list tile widget",
    )),
    GetPage(name: STEPPER_WIDGET, page: () => DashBoardScreen(
      displayWidget: StepperWidget(),
      displayWidgetCode: StepperWidgetCode().displayCode(),
      widgetName: "Stepper widget",
    )),
    GetPage(name: SIMPLE_TABBAR, page: () => DashBoardScreen(
      displayWidget: SimpleTabbarWidget(),
      displayWidgetCode: SimpleTabbarWidgetCode().displayCode(),
      widgetName: "Simple tabbar",
    )),
    GetPage(name: TOOL_TIP_WIDGET, page: () => DashBoardScreen(
      displayWidget: ToolTipWidget(),
      displayWidgetCode: ToolTipWidgetCode().displayCode(),
      widgetName: "Tool tip widget",
    )),
    GetPage(name: REDORDERABLE_LIST, page: () => DashBoardScreen(
      displayWidget: ReorderableListPage(),
      displayWidgetCode: ReOrderableListCode().displayCode(),
      widgetName: "Reorderable list widget",
    )),
    GetPage(name: ANIMATED_DEFAULT_TEXT_WIDGET, page: () => DashBoardScreen(
      displayWidget: AnimatedDefaultTextStyleWidget(),
      displayWidgetCode: AnimatedDefaultTextWidgetCode().displayCode(),
      widgetName: "Animated Text widget",
    )),
    GetPage(name: ANIMTED_LIST_WIDGET, page: () => DashBoardScreen(
      displayWidget: AnimatedListWidget(),
      displayWidgetCode: AnimatedListWidgetCode().displayCode(),
      widgetName: "Animated List Widget",
    )),
    GetPage(name: ANIMATED_OPACITY_WIDGET, page: () => DashBoardScreen(
      displayWidget: AnimatedOpacityWidget(),
      displayWidgetCode: AnimatedListWidgetCode().displayCode(),
      widgetName: "Animated Opacity Widget",
    )),
    GetPage(name: ANIMATED_SWITCHER_WIDGET, page: () => DashBoardScreen(
      displayWidget: AnimatedSwitcherWidget(),
      displayWidgetCode: AnimatedSwitcherWidgetCode().displayCode(),
      widgetName: "Animated Switcher Widget",
    )),
    GetPage(name: CLIP_OVAL_WIDGET, page: () => DashBoardScreen(
      displayWidget: ClipOvalWidget(),
      displayWidgetCode: ClipOvalWidgetCode().displayCode(),
      widgetName: "Clip Oval Widget",
    )),
    GetPage(name: CLIP_PATH_WIDGET, page: () => DashBoardScreen(
      displayWidget: ClipPathWidget(),
      displayWidgetCode: ClipPathWidgetCode().displayCode(),
      widgetName: "ClipPath Widget",
    )),
    GetPage(name: CLIP_R_RECT_WIDGET, page: () => DashBoardScreen(
      displayWidget: ClipRRectWidget(),
      displayWidgetCode: ClipRRectWidgetCode().displayCode(),
      widgetName: "ClipRRect Widget",
    )),
    GetPage(name: DISMISSIBLE_WIDGET, page: () => DashBoardScreen(
      displayWidget: DismissibleWidget(),
      displayWidgetCode: DismissibleWidgetCode().displayCode(),
      widgetName: "Dismissible widget",
    )),

  ];
}
