import 'package:app_multipage_comparenumbers/pages/findLargestSmallest.dart';
import 'package:app_multipage_comparenumbers/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

