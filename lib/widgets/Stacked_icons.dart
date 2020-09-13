import 'package:flutter/material.dart';

class StackedIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      alignment: Alignment.center,
      children: <Widget>[
        new Container(
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Color(0xFF18D191)),
          child: new Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
        new Container(
          margin: new EdgeInsets.only(right: 110.0, top: 100.0),
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Color(0xFFFC6A7F)),
          child: new Icon(
            Icons.drive_eta,
            color: Colors.white,
          ),
        ),
        new Container(
          margin: new EdgeInsets.only(left: 120.0, top: 90.0),
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: Color(0xFFFFCE56)),
          child: new Icon(
            Icons.directions_bus,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
