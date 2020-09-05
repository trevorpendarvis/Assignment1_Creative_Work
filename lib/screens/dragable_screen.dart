import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DragableScreen extends StatelessWidget {
  static const routeName = "/dragableScreen";
  Color currentColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dragable Screen Appbar"),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            DragableWidget(
              offset: Offset(25.0, 50.0),
            ),
            DragableWidget(
              offset: Offset(100.0, 50.0),
            ),
            DragableWidget(
              offset: Offset(175.0, 50.0),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: DragTarget(
                builder: (context, accepted, rejected) => Container(
                  height: 100.0,
                  width: 500.0,
                  color: currentColor,
                ),
                onAccept: (Color data) => currentColor = data,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DragableWidget extends StatefulWidget {
  final Offset offset;
  Color dataColor;

  DragableWidget({Key key, this.offset}) : super(key: key);

  @override
  _DragableWidgetState createState() => _DragableWidgetState();
}

class _DragableWidgetState extends State<DragableWidget> {
  Offset offset = Offset(0.0, 0.0);
  @override
  void initState() {
    super.initState();
    offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    Color dataColor = colorPicker();
    return Positioned(
      bottom: widget.offset.dy,
      left: widget.offset.dx,
      child: Draggable(
        child: Container(
          width: 50.0,
          height: 50.0,
          color: dataColor,
        ),
        feedback: Container(
          width: 50.0,
          height: 50.0,
          color: dataColor.withOpacity(0.3),
        ),
        data: dataColor,
        onDraggableCanceled: (velocity, offset) =>
            setState(() => offset = offset),
      ),
    );
  }

  colorPicker() {
    return Color(Random().nextInt(0xffffffff));
  }
}
