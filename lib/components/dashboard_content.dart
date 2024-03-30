import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_craft/components/custom_appbar.dart';
import 'package:flutter_craft/components/temp_widgets.dart';
import 'package:flutter_craft/components/widget_displayer.dart';
import 'package:flutter_craft/constants/constants.dart';
import 'package:flutter_craft/constants/responsive.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({Key? key, required this.displayWidget, required this.displayWidgetCode}) : super(key: key);
  final Widget displayWidget;
  final String displayWidgetCode;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(appPadding),
        child: Column(
          children: [
            CustomAppbar(),
            const SizedBox(
              height: appPadding,
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: appPadding,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if(!Responsive.isMobile(context))
                                Expanded(
                                  child: WidgetToDisplay(displayWidget: displayWidget),
                                  flex: 2,
                                ),
                              if(!Responsive.isMobile(context))
                                const SizedBox(width: appPadding,),
                              Expanded(
                                flex: 3,
                                child: DisplayCode(widgetCode: displayWidgetCode),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: appPadding,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
