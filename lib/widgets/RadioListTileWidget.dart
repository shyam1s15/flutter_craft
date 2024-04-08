import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class RatioListTileWidget extends StatefulWidget {
  const RatioListTileWidget({super.key});

  @override
  State<RatioListTileWidget> createState() => _RatioListTileWidgetState();
}

class _RatioListTileWidgetState extends State<RatioListTileWidget> {
// ...

  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<SingingCharacter>(
          title: const Text('Lafayette'),
          value: SingingCharacter.lafayette,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Thomas Jefferson'),
          value: SingingCharacter.jefferson,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }
}

class RatioListTileWidgetCode {
  String displayCode() {
    return """

enum SingingCharacter { lafayette, jefferson }

class RatioListTileWidget extends StatefulWidget {
  const RatioListTileWidget({super.key});

  @override
  State<RatioListTileWidget> createState() => _RatioListTileWidgetState();
}

class _RatioListTileWidgetState extends State<RatioListTileWidget> {
// ...

  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<SingingCharacter>(
          title: const Text('Lafayette'),
          value: SingingCharacter.lafayette,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Thomas Jefferson'),
          value: SingingCharacter.jefferson,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }
}
    
    """;
  }
}