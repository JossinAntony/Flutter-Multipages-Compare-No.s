import 'package:flutter/material.dart';

import 'find.dart';

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
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => Find())),
                  child: Container(
                    height: 70,
                    width: 245,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(colors: [Color.fromRGBO(170,7,107,1.0), Color.fromRGBO(97,4,95,1.0)]),
                    ),
                    child: Center(child: Text('Largest Number', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                  ),
                ),

                SizedBox(height: 30),

                GestureDetector(
                  onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => Find())),
                  child: Container(
                    height: 70,
                    width: 245,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(colors: [Color.fromRGBO(221,94,137,1.0), Color.fromRGBO(247,187,151,1.0)]),
                    ),
                    child: Center(child: Text('Smallest Number', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                  ),
                ),

                SizedBox(height: 30),

                GestureDetector(
                  onTap: ()=> print('container tapped'),
                  child: Container(
                    height: 70,
                    width: 245,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(colors: [Color.fromRGBO(229,93,135,1.0), Color.fromRGBO(95,195,228,1.0)]),
                    ),
                    child: Center(child: Text('Even or Odd', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                  ),
                ),



              ],
            ),
          ),
        )
      )
    );
  }
}
