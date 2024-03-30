import 'package:flutter/material.dart';
import 'package:flutter_craft/components/dashboard_content.dart';
import 'package:flutter_craft/components/drawer_menu.dart';
import 'package:flutter_craft/constants/constants.dart';
import 'package:flutter_craft/constants/responsive.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key, required this.displayWidget, required this.displayWidgetCode}) : super(key: key);
  final Widget displayWidget;
  final String displayWidgetCode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: DrawerMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: DrawerMenu(),
              ),
            Expanded(
              flex: 5,
              child: DashboardContent(displayWidget: displayWidget, displayWidgetCode: displayWidgetCode,),
            )
          ],
        ),
      ),
    );
  }
}
