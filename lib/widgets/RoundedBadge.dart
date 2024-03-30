import 'package:flutter/material.dart';

class RoundedBadgeData extends StatelessWidget {
  const RoundedBadgeData({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedBadge(title: "Get started", icon: Icon(Icons.light),);
  }
}


class RoundedBadge extends StatelessWidget {
  final String title;
  final Widget icon;
  const RoundedBadge({required this.title, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(.25),
          borderRadius: BorderRadius.circular(25.0)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}

class RoundedBadgeCode {
  static String displayCode() {
    return """
class RoundedBadgeData extends StatelessWidget {
  const RoundedBadgeData({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedBadge(title: "Get started", icon: Icon(Icons.light),);
  }
}


class RoundedBadge extends StatelessWidget {
  final String title;
  final Widget icon;
  const RoundedBadge({required this.title, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(.25),
          borderRadius: BorderRadius.circular(25.0)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
    
    """;
  }
}