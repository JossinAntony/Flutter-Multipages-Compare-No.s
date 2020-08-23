import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Operations'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: ()=> print('container tapped'),
                  child: Container(
                    height: 70,
                    width: 245,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(colors: [Color.fromRGBO(170,7,107,1.0), Color.fromRGBO(97,4,95,1.0)]),
                    ),
                    child: Center(child: Text('Largest Number')),
                  ),
                ),

                SizedBox(height: 50),
              ],
            ),
          ),
        )
      )
    );
  }
}
