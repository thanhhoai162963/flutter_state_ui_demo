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
      appBar: AppBar(backgroundColor: Colors.deepOrangeAccent,
        title: Text("login"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: "email",
                labelText: "email",
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "user",
                  labelText: "user"
              ),
            ),
            RaisedButton(
              child: Text("login", style: TextStyle(color: Colors.white)),
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}


