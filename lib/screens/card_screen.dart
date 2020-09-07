import 'package:assignment1_Creative_Work/screens/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  static const routeName = "/cardScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Screen Appbar"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 200.0),
        child: Card(
          color: Colors.blue[600],
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ListTile(
                leading: Image.asset("images/Pc2.jpg"),
                title: Text("New Computer"),
                subtitle: Text("Sale only here for one day"),
                hoverColor: Colors.orange,
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    onPressed: () => print("Computer bought"),
                    child: Text(
                      "Buy Now!",
                      style: TextStyle(color: Colors.black),
                    ),
                    color: Colors.white,
                    splashColor: Colors.teal[900],
                  ),
                  FlatButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, StartScreen.routeName),
                    child: Text(
                      "Place on lay away",
                      style: TextStyle(color: Colors.black),
                    ),
                    color: Colors.white,
                    splashColor: Colors.teal[900],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
