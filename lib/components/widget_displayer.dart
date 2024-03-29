import 'package:flutter/material.dart';
import 'package:flutter_craft/constants/constants.dart';

class DisplayCode extends StatelessWidget {
  const DisplayCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Widget Code',
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
          Expanded(
            child: CodeView(),
          )
        ],
      ),
    );
  }
}

class CodeView extends StatefulWidget {
  const CodeView({super.key});

  @override
  State<CodeView> createState() => _CodeViewState();
}

class _CodeViewState extends State<CodeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: List.generate(
        20,
        (index) => Container(
          height: 50,
          color: index % 2 == 0 ? Colors.grey[300] : Colors.white,
          child: Center(child: Text('Item $index')),
        ),
      ),
    ));
  }
}
