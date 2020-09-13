import 'package:book/Pages/LoginPage.dart';
import 'package:book/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToLoginScreen();
      } else {
        return null;
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});

    return true;
  }

  void _navigateToLoginScreen() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              new Container(
                height: 80.0,
                width: 80.0,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Color(0xFF18D191)),
                child: new Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              new Container(
                margin:
                    new EdgeInsets.only(right: 125.0, top: 110.0, bottom: 5.0),
                height: 70.0,
                width: 70.0,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Color(0xFFFC6A7F)),
                child: new Icon(
                  Icons.drive_eta,
                  color: Colors.white,
                ),
              ),
              new Container(
                margin: new EdgeInsets.only(left: 130.0, top: 100.0),
                height: 70.0,
                width: 70.0,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: Colors.blue),
                child: new Icon(
                  Icons.directions_bus,
                  color: Colors.white,
                ),
              ),
              // new Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: <Widget>[
              //       Padding(
              //         padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
              //         child: new Text(
              //           "EBS",
              //           style: new TextStyle(fontSize: 30.0),
              //         ),
              //       )
              //     ],
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
