import 'package:flutter/material.dart';
import 'package:flutter_craft/constants/constants.dart';
import 'package:flutter_craft/constants/responsive.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(appPadding),
          child: Stack(
            children: [
              /*Image.asset(
                "assets/images/my_image.jpeg",
                height: 25,
                color: textColor.withOpacity(0.8),
              ),*/
              Icon(Icons.doorbell, size: 25, color: textColor.withOpacity(0.8)),
              Positioned(
                right: 0,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: red,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: appPadding),
          padding: EdgeInsets.symmetric(
            horizontal: appPadding,
            vertical: appPadding / 2,
          ),
          child: Row(
            children: [
              ClipRRect(
                child: Image.asset(
                  'assets/images/my_image.jpeg',
                  height: 38,
                  width: 38,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              if(!Responsive.isMobile(context))
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: appPadding / 2),
                  child: Text('About Shyam',style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w800,
                  ),),
                )
            ],
          ),
        )
      ],
    );
  }
}
