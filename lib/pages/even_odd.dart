

import 'package:flutter/material.dart';

class CheckEvenOdd extends StatefulWidget {

  @override
  _CheckEvenOddState createState() => _CheckEvenOddState();
}

class _CheckEvenOddState extends State<CheckEvenOdd> {

  String _msg = '';
  Color _color;

  void _checkEvenOdd(var1){
    setState(() {
      if((var1 % 2) == 0){
        _color = Colors.green;
        _msg = '$var1 is even!';
      }else{
        _color = Colors.red;
        _msg = '$var1 is odd!';
      }
    });
  }

  TextEditingController numCntrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            width: 2,
                            //color: Colors.blueGrey.withOpacity(.8),
                            color: Colors.transparent,
                          ),
                          //color: Colors.lightBlue.withOpacity(.3),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(this._msg, style: TextStyle(
                            color: _color,
                            fontSize: 30,
                          )),
                        )
                    ),
                  ),

                  SizedBox(height: 30),

                  TextField(
                    controller: numCntrlr,
                    keyboardType: TextInputType.numberWithOptions(decimal: false),
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
            );
  }
}
