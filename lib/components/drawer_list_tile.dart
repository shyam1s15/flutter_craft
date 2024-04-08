import 'package:flutter/material.dart';
import 'package:flutter_craft/constants/constants.dart';
class DrawerListTile extends StatelessWidget {
  const DrawerListTile({Key? key, required this.title, this.icon, required this.tap}) : super(key: key);

  final String title;
  final VoidCallback tap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: tap,
      horizontalTitleGap: 0.0,
      //leading: SvgPicture.asset(svgSrc,color: grey,height: 20,),
      leading: getIcon(icon),
      title: Text(title,style: TextStyle(color: grey, fontSize: 14),),
    );
  }

  Widget? getIcon(IconData? data) {
    if (data == null) {
      return null;
    }
    return Icon(icon, color: grey, size: 20.0);
  }
}
