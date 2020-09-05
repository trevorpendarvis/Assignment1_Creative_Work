import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  static const routeName = "/startScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 100.0, 0, 0),
          child: Column(
            children: <Widget>[
              RaisedButton.icon(
                onPressed: () => print("hello"),
                icon: Icon(
                  Icons.ac_unit,
                  color: Colors.black,
                ),
                label: Text(
                  "Icon Button1",
                  style: TextStyle(color: Colors.black),
                ),
                color: Colors.white,
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton.icon(
                onPressed: () => print("hello"),
                icon: Icon(
                  Icons.access_alarm,
                  color: Colors.black,
                ),
                label: Text(
                  "Icon Button2",
                  style: TextStyle(color: Colors.black),
                ),
                color: Colors.white,
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton.icon(
                onPressed: () => print("hello"),
                icon: Icon(
                  Icons.access_time,
                  color: Colors.black,
                ),
                label: Text(
                  "Icon Button3",
                  style: TextStyle(color: Colors.black),
                ),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
