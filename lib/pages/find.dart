import 'package:flutter/material.dart';

class Find extends StatelessWidget {

  TextEditingController num1Cntrlr = TextEditingController();
  TextEditingController num2Cntrlr = TextEditingController();
  TextEditingController num3Cntrlr = TextEditingController();

  double _findLargest(double var1, double var2, double var3){
    if(var1 >= var2){
      if(var1 >= var3){
        return(var1);
      }else{
        return(var3);
      }
    }else {
      if(var2 >= var3){
        return(var2);
      }else{
        return(var3);
      }
    }
  }

  double _findSmallest(double var1, double var2, double var3){
    if(var1 <= var2){
      if(var1 <= var3){
        return(var1);
      }else{
        return(var3);
      }
    }else {
      if(var2 <= var3){
        return(var2);
      }else{
        return(var3);
      }
    }
  }

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
                        controller: num1Cntrlr,
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
                        controller: num2Cntrlr,
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
                        controller: num3Cntrlr,
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

              SizedBox(height: 50),

              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 100,
                      height: 60,
                      child: RaisedButton(
                        onPressed: (){
                          print(_findLargest(double.parse(num1Cntrlr.text), double.parse(num2Cntrlr.text), double.parse(num3Cntrlr.text)));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: Colors.pink,
                        child: Center(child: Text('Find Largest')),
                      ),
                    ),

                    SizedBox(height: 30),

                    ButtonTheme(
                      minWidth: 100,
                      height: 60,
                      child: RaisedButton(
                        onPressed: (){
                          print(_findSmallest(double.parse(num1Cntrlr.text), double.parse(num2Cntrlr.text), double.parse(num3Cntrlr.text)));
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: Colors.lightGreenAccent,
                        child: Center(child: Text('Find Smallest')),
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        )
      )
    );
  }
}
