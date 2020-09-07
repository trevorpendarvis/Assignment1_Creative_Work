import 'package:assignment1_Creative_Work/screens/card_screen.dart';
import 'package:assignment1_Creative_Work/screens/dragable_screen.dart';
import 'package:assignment1_Creative_Work/screens/drawer_screen.dart';
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
                onPressed: () =>
                    Navigator.pushNamed(context, DragableScreen.routeName),
                icon: Icon(
                  Icons.drag_handle,
                  color: Colors.black,
                ),
                label: Text(
                  "Drag",
                  style: TextStyle(color: Colors.black),
                ),
                color: Colors.white,
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton.icon(
                onPressed: () =>
                    Navigator.pushNamed(context, CardScreen.routeName),
                icon: Icon(
                  Icons.credit_card,
                  color: Colors.black,
                ),
                label: Text(
                  "Card",
                  style: TextStyle(color: Colors.black),
                ),
                color: Colors.white,
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton.icon(
                onPressed: () =>
                    Navigator.pushNamed(context, DrawerScreen.routeName),
                icon: Icon(
                  Icons.desktop_mac,
                  color: Colors.black,
                ),
                label: Text(
                  "Drawer Screen",
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
