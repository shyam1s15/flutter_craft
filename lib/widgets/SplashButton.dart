import 'package:flutter/material.dart';

class SplashButtonWithData extends StatelessWidget {
  const SplashButtonWithData({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashButton(title: "title", subText: "subtitle", onPressed: () {},);
  }
}


class SplashButton extends StatelessWidget {
  final String title;
  final String subText;
  final Function() onPressed;
  const SplashButton(
      {required this.title,
        required this.onPressed,
        this.subText = "",
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.greenAccent
      ),
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: InkWell(
          onTap: onPressed,
          splashColor: Colors.purpleAccent,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            width: 250,
            height: 45,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(16.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  subText,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SplashButtonCode {
  static String displayCode() {
    return """
class SplashButtonWithData extends StatelessWidget {
  const SplashButtonWithData({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashButton(title: "title", subText: "subtitle", onPressed: () {},);
  }
}


class SplashButton extends StatelessWidget {
  final String title;
  final String subText;
  final Function() onPressed;
  const SplashButton(
      {required this.title,
        required this.onPressed,
        this.subText = "",
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.greenAccent
      ),
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: InkWell(
          onTap: onPressed,
          splashColor: Colors.purpleAccent,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            width: 250,
            height: 45,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(16.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  subText,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
    """;
  }
}