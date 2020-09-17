import 'package:app_multipage_comparenumbers/pages/check_divisibility.dart';
import 'package:app_multipage_comparenumbers/pages/counter.dart';
import 'package:app_multipage_comparenumbers/pages/even_odd.dart';
import 'package:app_multipage_comparenumbers/pages/findLargestSmallest.dart';
import 'package:app_multipage_comparenumbers/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final pages =[FindLargestSmallest(), CheckEvenOdd(), CheckDivisibilityby8(), Counter()];
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('OPERATIONS'),
          ),
        body: pages[_pageIndex],
        ),
    );
  }
}

