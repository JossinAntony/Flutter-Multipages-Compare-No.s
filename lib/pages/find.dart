import 'package:flutter/material.dart';

class Find extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Find..'),
        ),
        body: Container(
          padding: EdgeInsets.only(left:10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIcon: Icon(Icons.filter_1),
                          hintText: 'No.1'
                        ),
                      )
                  ),

                  //SizedBox(width:4.0),

                  Icon(Icons.code),

                  Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: Icon(Icons.filter_2),
                            hintText: 'No. 2'
                        ),
                      )
                  ),

                  Icon(Icons.code),

                  Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            prefixIcon: Icon(Icons.filter_3),
                            hintText: 'No. 3'
                        ),
                      )
                  ),
                ],
              ),
            ],
          ),
        )
      )
    );
  }
}
