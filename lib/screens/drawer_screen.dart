import 'package:assignment1_Creative_Work/screens/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  static const routeName = "/drawerScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer AppBar"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                "Header",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text(
                "Messages",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text(
                "Balance",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: FlatButton(
                onPressed: () =>
                    Navigator.pushNamed(context, StartScreen.routeName),
                child: Text(
                  "Exit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                color: Colors.blue[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
