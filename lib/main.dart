
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Home Page"),
            Countpage(),
          ],
        ),
      ),
      ),
    );
  }
}
class Countpage extends StatefulWidget {
  @override
  _CountpageState createState() => _CountpageState();
}

class _CountpageState extends State<Countpage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text("data $count",style: TextStyle(fontSize: 20),),
          SizedBox(height: 10,),
          RaisedButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text("Click me",style: TextStyle(color: Colors.white)),
            onPressed: (){
              setState(() {
                count++;
              });
            },
          )
        ],
      )
    );
  }
}







