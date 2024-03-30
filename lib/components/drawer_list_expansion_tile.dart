import 'package:flutter/material.dart';
import 'package:flutter_craft/constants/constants.dart';
class DrawerListExpansionTile extends StatelessWidget {
  const DrawerListExpansionTile({Key? key, required this.title, required this.icon, required this.childrens}) : super(key: key);

  final String title;
  final IconData icon;
  final List<Widget> childrens;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        leading: Icon(icon, color: grey, size: 20.0),
        title: Text(title,style: TextStyle(color: grey),),
        children: childrens,
      ),
    );
  }
}
