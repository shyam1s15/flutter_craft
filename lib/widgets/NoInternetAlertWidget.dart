import 'package:flutter/material.dart';

class NoInternetWidgetData extends StatelessWidget {
  const NoInternetWidgetData({super.key});

  @override
  Widget build(BuildContext context) {
    return NoInternetWidget(icon: Icon(Icons.wifi, color: Colors.white,), primaryColor: Colors.deepPurpleAccent, text: "Your internet connection was restored", actions: [TextButton(onPressed: (){}, child: Text("LEARN MORE")), TextButton(onPressed: () {}, child: Text("DISMISS"))],);
  }
}


class NoInternetWidget extends StatelessWidget {
  final Icon icon;
  final Color primaryColor;
  final List<TextButton> actions;
  final String text;

  const NoInternetWidget(
      {required this.icon, required this.actions, required this.text, this.primaryColor = Colors.blue, Key? key})
      : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialBanner(
        content: Text(text, style: TextStyle(color: primaryColor),),
        leading: CircleAvatar(child: icon,backgroundColor: primaryColor,),
        actions: actions,
      ),
    );
  }
}

class NoInternetWidgetCode {
  static String displayCode() {
    return """

class NoInternetWidgetData extends StatelessWidget {
  const NoInternetWidgetData({super.key});

  @override
  Widget build(BuildContext context) {
    return NoInternetWidget(icon: Icon(Icons.wifi, color: Colors.white,), primaryColor: Colors.deepPurpleAccent, text: "Your internet connection was restored", actions: [TextButton(onPressed: (){}, child: Text("LEARN MORE")), TextButton(onPressed: () {}, child: Text("DISMISS"))],);
  }
}


class NoInternetWidget extends StatelessWidget {
  final Icon icon;
  final Color primaryColor;
  final List<TextButton> actions;
  final String text;

  const NoInternetWidget(
      {required this.icon, required this.actions, required this.text, this.primaryColor = Colors.blue, Key? key})
      : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialBanner(
        content: Text(text, style: TextStyle(color: primaryColor),),
        leading: CircleAvatar(child: icon,backgroundColor: primaryColor,),
        actions: actions,
      ),
    );
  }
}    
    """;
  }
}