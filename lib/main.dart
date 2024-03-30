import 'package:flutter/material.dart';
import 'package:flutter_craft/routing/routes.dart';
import 'package:flutter_craft/screens/dashboard_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Crafts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: DashBoardScreen(),
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppRoutes.routes,
    );
  }
}

