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
          ]),
          DrawerListTile(
              title: 'Blog Post',
              icon: Icons.smart_button,
              tap: () {}),
          DrawerListTile(
              title: 'Message',
              icon: Icons.smart_button,
              tap: () {}),
          DrawerListTile(
              title: 'Statistics',
              icon: Icons.smart_button,
              tap: () {}),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: grey,
              thickness: 0.2,
            ),
          ),

          DrawerListTile(
              title: 'Settings',
              icon: Icons.smart_button,
              tap: () {}),
          DrawerListTile(
              title: 'Logout',
              icon: Icons.smart_button,
              tap: () {}),
        ],
      ),
    );
  }
}
