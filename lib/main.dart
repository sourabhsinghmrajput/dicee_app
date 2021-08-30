import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  int ln = 1;
  int rn = 1;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red,
      appBar: new AppBar(
        title: Center(child: new Text("Dicee")),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      ln = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage('images/dice$ln.png'),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rn = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    image: AssetImage('images/dice$rn.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
