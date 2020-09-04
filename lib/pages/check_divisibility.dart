

import 'package:flutter/material.dart';

class CheckDivisibilityby8 extends StatefulWidget {

  @override
  _CheckDivisibilityby8State createState() => _CheckDivisibilityby8State();
}

class _CheckDivisibilityby8State extends State<CheckDivisibilityby8> {
  void _checkDivisibilityBy8(var1){
      setState(() {
        if((var1 % 8) == 0){
          _color = Colors.green;
          _msg = '$var1 is divisible by 8';
        }else{
          _color = Colors.red;
          _msg = '$var1 is not divisible by 8';
        }
      });
  }

  String _msg = '';
  Color _color;

  TextEditingController numCntrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Divisibility by 8'),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(this._msg),
              TextField(
                controller: numCntrlr,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  prefixIcon: Icon(Icons.filter_8),
                  hintText: 'Enter the number whose divisibility by eight has to be checked',
                ),
              ),

              SizedBox(height:70),

              RaisedButton(
                onPressed: (){
                  _checkDivisibilityBy8(double.parse(numCntrlr.text));
                },
                color: Colors.blueAccent,
                child: Text('SUBMIT'),
              ),
            ],
          ),
        )
      )
    );
  }
}
