import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text(
                      'Hi, I am shyam,\n Software Engineer',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                        'Experienced in backend development with Java and Spring Boot, I bring a strong foundation in building robust, scalable applications. Additionally, my proficiency in Flutter allows me to create engaging and dynamic user interfaces. I am passionate about delivering high-quality software solutions that meet and exceed client expectations'),
                    ElevatedButton(
                        onPressed: () {}, child: Text("download resume"))
                  ],
                ),
              ),
              Expanded(
                child: Image.asset('assets/images/my_image.jpeg',),
                flex: 2,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
