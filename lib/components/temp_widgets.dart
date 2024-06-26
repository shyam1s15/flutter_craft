import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_craft/constants/constants.dart';

class WidgetToDisplay extends StatelessWidget {
  final Widget displayWidget;
  final String widgetName;
  const WidgetToDisplay({Key? key, required this.displayWidget, required this.widgetName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(appPadding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widgetName,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
              /*Text(
                'View All',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: textColor.withOpacity(0.5),
                ),
              ),*/
            ],
          ),
          SizedBox(
            height: appPadding,
          ),
          /*Expanded(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: referalData.length,
              itemBuilder: (context, index) => ReferalInfoDetail(
                info: referalData[index],
              ),
            ),
          )*/
          Expanded(child: Container(child: Center(child: displayWidget))),
        ],
      ),
    );
  }
}
