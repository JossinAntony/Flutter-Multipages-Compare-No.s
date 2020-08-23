

import 'package:flutter/material.dart';

class CheckEvenOdd extends StatelessWidget {

  void _checkEvenOdd(var1){
    if((var1 % 2) == 0){
      print('$var1 is even');
    }else{
      print('$var1 is odd');
    }
  }

  TextEditingController numCntrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Check Even/ Odd'),
            ),
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    controller: numCntrlr,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      prefixIcon: Icon(Icons.filter_1),
                      hintText: 'Enter the number',
                    ),
                  ),

                  SizedBox(height:70),

                  Container(
                    //padding: EdgeInsets.only(left:40, right:40),
                    child: ButtonTheme(
                      minWidth: 400,
                      height: 40,
                      child: RaisedButton(
                        onPressed: (){
                          _checkEvenOdd(double.parse(numCntrlr.text));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: Colors.yellowAccent,
                        child: Text('SUBMIT'),
                      ),
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}
