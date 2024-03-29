import 'package:flutter/material.dart';
import 'package:flutter_craft/components/dashboard_content.dart';
import 'package:flutter_craft/components/drawer_menu.dart';
import 'package:flutter_craft/constants/constants.dart';
import 'package:flutter_craft/constants/responsive.dart';
class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: DrawerMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: DrawerMenu(),),
            Expanded(
              flex: 5,
              child: DashboardContent(),
            )
          ],
        ),
      ),
    );
  }
}
