import 'package:flutter/material.dart';
import 'package:flutter_craft/components/drawer_list_expansion_tile.dart';
import 'package:flutter_craft/constants/constants.dart';
import 'package:flutter_craft/routing/routes.dart';
import 'package:get/get.dart';

import 'drawer_list_tile.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(appPadding),
            //child: Image.asset("assets/images/logowithtext.png"),
            child: Center(child: Icon(Icons.supervisor_account, size: 40,),),
          ),
          DrawerListExpansionTile(title: 'Buttons', icon: Icons.smart_button, childrens: [
            DrawerListTile(
                title: 'Toggle Button',
                tap: () {
                  Get.toNamed(AppRoutes.DASHBOARD);
                }),
            DrawerListTile(
                title: 'Splash Button',
                tap: () {
                  Get.toNamed(AppRoutes.SPLASH_BUTTON);
                }),
            DrawerListTile(
                title: 'Animated Loading Button',
                tap: () {
                  Get.toNamed(AppRoutes.ANIMATED_LOADING_BUTTON);
                }),
          ]),
          DrawerListExpansionTile(title: 'Lists', icon: Icons.list, childrens: [
            DrawerListTile(
                title: 'Horizontal Category list',
                tap: () {
                  Get.toNamed(AppRoutes.HORIZONTAL_CATEGORY_LIST);
                }),

          ]),
          DrawerListExpansionTile(title: 'App Bars', icon: Icons.list, childrens: [
            DrawerListTile(
                title: 'Bottom Curved Nav Bar',
                tap: () {
                  Get.toNamed(AppRoutes.BOTTOM_CURVED_NAV_BAR);
                }),

          ]),
          DrawerListExpansionTile(title: 'Others', icon: Icons.smart_button, childrens: [
            DrawerListTile(
                title: 'Rounded Badge',
                tap: () {
                  Get.toNamed(AppRoutes.ROUNDED_BADGE);
                }),
            DrawerListTile(
                title: 'No Internet Banner',
                tap: () {
                  Get.toNamed(AppRoutes.NO_INTERNET_WIDGET);
                }),
          ]),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: grey,
              thickness: 0.2,
            ),
          ),

          DrawerListExpansionTile(title: 'Pages', icon: Icons.smart_button, childrens: [
            DrawerListTile(
                title: 'On Boarding Page',
                tap: () {
                  Get.toNamed(AppRoutes.ON_BOARDING_PAGE);
                }),
            DrawerListTile(
                title: 'On Boarding Page2',
                tap: () {
                  Get.toNamed(AppRoutes.ON_BOARDING_PAGE2);
                }),
            DrawerListTile(
                title: 'Profile Page',
                tap: () {
                  Get.toNamed(AppRoutes.PROFILE_PAGE1);
                }),
            DrawerListTile(
                title: 'Sectioned Setting Page',
                tap: () {
                  Get.toNamed(AppRoutes.SECTIONED_SETTING_PAGE);
                }),
          ]),
          DrawerListTile(
              title: 'Logout',
              icon: Icons.smart_button,
              tap: () {}),
        ],
      ),
    );
  }
}
