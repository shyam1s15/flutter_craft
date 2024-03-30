import 'package:flutter_craft/screens/dashboard_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String DASHBOARD = '/';
  static const String OTHER = '/other';

  static final routes = [
    GetPage(name: DASHBOARD, page: () => DashBoardScreen()),
    //GetPage(name: OTHER, page: () => OtherScreen()),
  ];
}
