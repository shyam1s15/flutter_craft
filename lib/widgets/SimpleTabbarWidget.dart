import 'package:flutter/material.dart';

class SimpleTabbarWidget extends StatefulWidget {
  const SimpleTabbarWidget({super.key});

  @override
  State<SimpleTabbarWidget> createState() => _SimpleTabbarWidgetState();
}

class _SimpleTabbarWidgetState extends State<SimpleTabbarWidget> {
  List<String> _tabs = ['One', 'Two', 'Three'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length, // This is the number of tabs.
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: TabBar(
            // These are the widgets to put in each tab in the tab bar.
            tabs: _tabs.map((String name) => Tab(text: name)).toList(),
          ),
        ),
        body: TabBarView(
          // These are the contents of the tab views, below the tabs.
          children: _tabs.map((String name) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                // This Builder is needed to provide a BuildContext that is "inside"
                // the NestedScrollView, so that sliverOverlapAbsorberHandleFor() can
                // find the NestedScrollView.
                builder: (BuildContext context) {
                  return Center(
                    child: Text('Page $name'),
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class SimpleTabbarWidgetCode {
  String displayCode() {
    return """

class SimpleTabbarWidget extends StatefulWidget {
  const SimpleTabbarWidget({super.key});

  @override
  State<SimpleTabbarWidget> createState() => _SimpleTabbarWidgetState();
}

class _SimpleTabbarWidgetState extends State<SimpleTabbarWidget> {
  List<String> _tabs = ['One', 'Two', 'Three'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length, // This is the number of tabs.
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: TabBar(
            // These are the widgets to put in each tab in the tab bar.
            tabs: _tabs.map((String name) => Tab(text: name)).toList(),
          ),
        ),
        body: TabBarView(
          // These are the contents of the tab views, below the tabs.
          children: _tabs.map((String name) {
            return SafeArea(
              top: false,
              bottom: false,
              child: Builder(
                // This Builder is needed to provide a BuildContext that is "inside"
                // the NestedScrollView, so that sliverOverlapAbsorberHandleFor() can
                // find the NestedScrollView.
                builder: (BuildContext context) {
                  return Center(
                    child: Text('Page name'),
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
    
    """;
  }
}
