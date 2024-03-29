import 'package:flutter/material.dart';
import 'package:flutter_craft/components/profile_info.dart';
import 'package:flutter_craft/components/search_field.dart';
import 'package:flutter_craft/constants/constants.dart';
import 'package:flutter_craft/constants/responsive.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            // onPressed: context.read<Controller>().controlMenu,
            onPressed: () {},
            icon: Icon(Icons.menu,color: textColor.withOpacity(0.5),),
          ),
        Expanded(child: SearchField()),
        ProfileInfo()
      ],
    );
  }
}
