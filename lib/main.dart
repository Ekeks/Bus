import 'package:book/Pages/LoginPage.dart';
import 'package:book/Pages/splashscreen.dart';
import 'package:book/widgets/provider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static String ekeks;

  @override
  Widget build(BuildContext context) {
    return Provider(
      auth: AuthService(),
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        // routes: <String, WidgetBuilder>{
        //   '/signup': (BuildContext context) => new HomePage(),
        //   '/signin': (BuildContext context) => new HomePage(),

        // },
      ),
    );
  }
}

class AuthService {
  var onAuthStateChanged;

  sinInWithEmailAndPassword(String email, String password) {}

  createUserWithEmailAndPassword(String email, String password) {}

  registerWithEmailAndPassword(String email, String password) {}

  registerUserWithEmailAndPassword(String email, String password) {}
}
