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
            child: Center(
              child: Icon(
                Icons.supervisor_account,
                size: 40,
              ),
            ),
          ),
          DrawerListExpansionTile(
              title: 'Buttons',
              icon: Icons.smart_button,
              childrens: [
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
                DrawerListTile(
                    title: 'Radio List tile',
                    tap: () {
                      Get.toNamed(AppRoutes.RADIO_LIST_TILE_WIDGET);
                    }),
              ]),
          DrawerListExpansionTile(title: 'Lists', icon: Icons.list, childrens: [
            DrawerListTile(
                title: 'Horizontal Category list',
                tap: () {
                  Get.toNamed(AppRoutes.HORIZONTAL_CATEGORY_LIST);
                }),
            DrawerListTile(
                title: 'Reorderable list widget',
                tap: () {
                  Get.toNamed(AppRoutes.REDORDERABLE_LIST);
                }),
          ]),
          DrawerListExpansionTile(
              title: 'App Bars',
              icon: Icons.app_blocking,
              childrens: [
                DrawerListTile(
                    title: 'Bottom Curved Nav Bar',
                    tap: () {
                      Get.toNamed(AppRoutes.BOTTOM_CURVED_NAV_BAR);
                    }),
                DrawerListTile(
                    title: 'Popup menu dots button',
                    tap: () {
                      Get.toNamed(AppRoutes.POPUP_MENU_BUTTON_WIDGET);
                    }),
                DrawerListTile(
                    title: 'Simple Tab Bar',
                    tap: () {
                      Get.toNamed(AppRoutes.SIMPLE_TABBAR);
                    }),
              ]),
          DrawerListExpansionTile(
              title: 'Animated Widgets', icon: Icons.animation_outlined, childrens: [
            DrawerListTile(
                title: 'Animated Text Widget',
                tap: () {
                  Get.toNamed(AppRoutes.ANIMATED_DEFAULT_TEXT_WIDGET);
                }),
            DrawerListTile(
                title: 'Animated List Widget',
                tap: () {
                  Get.toNamed(AppRoutes.ANIMTED_LIST_WIDGET);
                }),
            DrawerListTile(
                title: 'Animated Opacity Widget',
                tap: () {
                  Get.toNamed(AppRoutes.ANIMATED_OPACITY_WIDGET);
                }),
          ]),
          DrawerListExpansionTile(
              title: 'Others',
              icon: Icons.other_houses_outlined,
              childrens: [
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
                DrawerListTile(
                    title: 'Decorated Box with trans',
                    tap: () {
                      Get.toNamed(AppRoutes.DECORATED_BOX_TRANSITION);
                    }),
                DrawerListTile(
                    title: 'stepper',
                    tap: () {
                      Get.toNamed(AppRoutes.STEPPER_WIDGET);
                    }),
                DrawerListTile(
                    title: 'Tool tip',
                    tap: () {
                      Get.toNamed(AppRoutes.TOOL_TIP_WIDGET);
                    }),
              ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: grey,
              thickness: 0.2,
            ),
          ),
          DrawerListExpansionTile(
              title: 'Pages',
              icon: Icons.smart_button,
              childrens: [
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
                DrawerListTile(
                    title: 'Simple Setting Page',
                    tap: () {
                      Get.toNamed(AppRoutes.SIMPLE_SETTINGS_PAGE);
                    }),
              ]),
        ],
      ),
    );
  }
}
