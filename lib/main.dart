import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _num1ctrl = new TextEditingController();
  TextEditingController _num2ctrl = new TextEditingController();
  TextEditingController _num3ctrl = new TextEditingController();
  TextEditingController _num4ctrl = new TextEditingController();

  double result = 0.0, num1 = 0.0, num2 = 0.0, num3 = 0.0, num4 = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fraction Calculator',
      theme: ThemeData.dark(),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Fraction Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 30, 25, 0),
                    child: TextField(
                      controller: _num1ctrl,
                      keyboardType: TextInputType.numberWithOptions(),
                      style: new TextStyle(
                        fontSize: 18.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Arial",
                      ),
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.black),
                          hintText: "             N",
                          fillColor: Colors.greenAccent),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 30, 25, 0),
                    child: TextField(
                      controller: _num2ctrl,
                      keyboardType: TextInputType.numberWithOptions(),
                      style: new TextStyle(
                        fontSize: 18.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Arial",
                      ),
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.black),
                          hintText: "             N",
                          fillColor: Colors.greenAccent),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Text('________________________'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Text('______________________'),
            ),
            ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 10, 25, 20),
                    child: TextField(
                      controller: _num3ctrl,
                      keyboardType: TextInputType.numberWithOptions(),
                      style: new TextStyle(
                        fontSize: 18.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Arial",
                      ),
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.black),
                          hintText: "             D",
                          fillColor: Colors.greenAccent),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 25, 10),
                    child: TextField(
                      controller: _num4ctrl,
                      keyboardType: TextInputType.numberWithOptions(),
                      style: new TextStyle(
                        fontSize: 18.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Arial",
                      ),
                      decoration: new InputDecoration(
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.black),
                          hintText: "             D",
                          fillColor: Colors.greenAccent),
                    ),
                  ),
                ),
              ],
            ),
            new Text(
              " N = NUMERATOR , D = DENOMINATOR ",
              style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.w200,
                  fontFamily: "Arial"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: new MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    elevation: 5.0,
                    minWidth: 90.0,
                    height: 50,
                    color: Colors.greenAccent,
                    child: new Text(' + ',
                        style:
                            new TextStyle(fontSize: 24.0, color: Colors.black)),
                    onPressed: _addOperation,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                  child: new MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    elevation: 5.0,
                    minWidth: 90.0,
                    height: 50,
                    color: Colors.greenAccent,
                    child: new Text(' - ',
                        style:
                            new TextStyle(fontSize: 24.0, color: Colors.black)),
                    onPressed: _subOperation,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                  child: new MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    elevation: 5.0,
                    minWidth: 90.0,
                    height: 50,
                    color: Colors.greenAccent,
                    child: new Text(' X ',
                        style:
                            new TextStyle(fontSize: 24.0, color: Colors.black)),
                    onPressed: _mulOperation,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                  child: new MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    elevation: 5.0,
                    minWidth: 90.0,
                    height: 50,
                    color: Colors.greenAccent,
                    child: new Text(' / ',
                        style:
                            new TextStyle(fontSize: 24.0, color: Colors.black)),
                    onPressed: _divOperation,
                  ),
                ),
              ],
            ),
            new Text(
              "Result : $result",
              style: new TextStyle(
                  fontSize: 36.0,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.w200,
                  fontFamily: "Arial"),
            ),
             Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                  child: new MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    elevation: 5.0,
                    minWidth: 90.0,
                    height: 50,
                    color: Colors.greenAccent,
                    child: new Text(' Clear ',
                        style:
                            new TextStyle(fontSize: 24.0, color: Colors.black)),
                    onPressed: _clear,
                                      ),
                                    ),
                              ],
                            ),
                          ),
                        );
                      }
                    
                      void _addOperation() {
                        setState(() {
                          double a = double.parse(_num1ctrl.text);
                          double b = double.parse(_num3ctrl.text);
                          double c = double.parse(_num2ctrl.text);
                          double d = double.parse(_num4ctrl.text);
                          result = ((a * d) + (b * c)) / (b * d);
                        });
                      }
                    
                      void _subOperation() {
                        setState(() {
                          double a = double.parse(_num1ctrl.text);
                          double b = double.parse(_num3ctrl.text);
                          double c = double.parse(_num2ctrl.text);
                          double d = double.parse(_num4ctrl.text);
                          result = ((a * d) - (b * c)) / (b * d);
                        });
                      }
                    
                      void _mulOperation() {
                        setState(() {
                          double a = double.parse(_num1ctrl.text);
                          double b = double.parse(_num3ctrl.text);
                          double c = double.parse(_num2ctrl.text);
                          double d = double.parse(_num4ctrl.text);
                          result = ((a * c) / (b * d));
                        });
                      }
                    
                      void _divOperation() {
                        setState(() {
                          double a = double.parse(_num1ctrl.text);
                          double b = double.parse(_num3ctrl.text);
                          double c = double.parse(_num2ctrl.text);
                          double d = double.parse(_num4ctrl.text);
                          result = ((a * d) / (b * c));
                        });
                      }
                    
                      void _clear() {
                        setState(() {
                          _num1ctrl.clear();
                          _num3ctrl.clear();
                          _num2ctrl.clear();
                          _num4ctrl.clear();
                          result = 0.0;
                         
                        });
  }
}
