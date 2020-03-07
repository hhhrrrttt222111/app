import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {

  final String pageText;
  AboutUs(this.pageText);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "About Us",
      debugShowCheckedModeBanner: false,
    );
  }
}
