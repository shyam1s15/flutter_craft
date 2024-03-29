import 'package:flutter/material.dart';
import 'package:flutter_craft/constants/constants.dart';
class DrawerListTile extends StatelessWidget {
  const DrawerListTile({Key? key, required this.title, required this.icon, required this.tap}) : super(key: key);

  final String title;
  final VoidCallback tap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: tap,
      horizontalTitleGap: 0.0,
      //leading: SvgPicture.asset(svgSrc,color: grey,height: 20,),
      leading: Icon(icon, color: grey, size: 20.0),
      title: Text(title,style: TextStyle(color: grey),),
    );
  }
}
