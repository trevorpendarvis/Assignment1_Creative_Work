import 'package:assignment1_Creative_Work/screens/dragable_screen.dart';
import 'package:assignment1_Creative_Work/screens/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CreativeWork());
}

class CreativeWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (context) => StartScreen(),
        DragableScreen.routeName: (context) => DragableScreen(),
      },
    );
  }
}
