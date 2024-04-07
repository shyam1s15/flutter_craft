import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_craft/constants/constants.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class DisplayCode extends StatelessWidget {
  final String widgetCode;
  const DisplayCode({Key? key, required this.widgetCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(appPadding),
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
              const Text(
                'Widget Code',
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              ElevatedButton(onPressed: () {
                Clipboard.setData(ClipboardData(text: widgetCode));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Copied to clipboard'),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Colors.grey[900],
                    duration: Duration(seconds: 2),
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    elevation: 8.0,
                    action: SnackBarAction(
                      label: 'Dismiss',
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                    ),
                  ),
                );
              }, child: const Text(
                'Copy Code',
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),)
            ],
          ),
          SizedBox(
            height: appPadding,
          ),
          Expanded(
            child: SingleChildScrollView(
              // mainAxisAlignment: MainAxisAlignment.center,
              // children: [
                scrollDirection: Axis.horizontal,
                child: CodeView(widgetCode: widgetCode,),
              // ],
            ),
          )
        ],
      ),
    );
  }
  /*static const widgetCode = """
  Column(
  children: [
    // Fixed height widget
    Container(
      height: 100,
      color: Colors.blue,
      child: Center(child: Text('Header')),
    ),
    // Expanded widget with SingleChildScrollView
    Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            20,
            (index) => Container(
              height: 50,
              color: index % 2 == 0 ? Colors.grey[300] : Colors.white,
              child: Center(child: Text('Item \$index')),
            ),
          ),
        ),
      ),
    ),
  ],
)
""";
*/
}

class CodeView extends StatefulWidget {
  final String widgetCode;
  const CodeView({super.key, required this.widgetCode});

  @override
  State<CodeView> createState() => _CodeViewState();
}

class _CodeViewState extends State<CodeView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.all(appPadding),
          child: SyntaxView(
      code: widget.widgetCode,
      syntax: Syntax.DART,
      syntaxTheme: SyntaxTheme.vscodeDark(),
      fontSize: 12.0,
      withZoom: true, // Enable/Disable zoom icon controls
      withLinesCount: false, // Enable/Disable line number
      expanded: false,
      selectable: true),
        );
  }
}
