import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  ClipRRectWidget({super.key});
  String _imageUrl = 'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: SizedBox(
        width: 100,
        height: 100,
        child: Image.network(_imageUrl, fit: BoxFit.cover,),
      ),
    );
  }
}

class ClipRRectWidgetCode {
  String displayCode() {
    return """

class ClipRRectWidget extends StatelessWidget {
  ClipRRectWidget({super.key});
  String _imageUrl = 'https://images.unsplash.com/photo-1565898835704-3d6be4a2c98c?fit=crop&w=200&q=60';

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: SizedBox(
        width: 100,
        height: 100,
        child: Image.network(_imageUrl, fit: BoxFit.cover,),
      ),
    );
  }
}    
    """;
  }
}