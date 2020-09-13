import 'package:flutter/material.dart';
import 'package:book/widgets/Stacked_icons.dart';
import 'package:book/Pages/Home.dart';
import 'package:book/Pages/Register.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _LoginState();
}

enum FormType { login }

class _LoginState extends State<Login> {
  final _formkey = new GlobalKey<FormState>();

  String _email;
  String _password;
  FormType _formType = FormType.login;

  bool validateAndSave() {
    final form = _formkey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  // void validateAndSubmit() async {
  //   if (validateAndSave()) {
  //     try {
  //       if (_formType == FormType.login) {
  //         AuthResult user = (await FirebaseAuth.instance
  //             .signInWithEmailAndPassword(email: _email, password: _password));
  //         print('Signed in: $user');
  //       }
  //       Navigator.of(context).push(
  //           MaterialPageRoute(builder: (BuildContext context) => Home()));
  //     } catch (e) {
  //       print('Error: $e');
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Color(0xFF18D191)),
        ),
        body: Container(
          width: double.infinity,
          child: new Form(
            key: _formkey,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new StackedIcons(),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                      child: new Text(
                        "EBS",
                        style: new TextStyle(fontSize: 30.0),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 0.0),
                      child: new TextFormField(
                        decoration: new InputDecoration(labelText: 'Email'),
                        validator: (value) =>
                            value.isEmpty ? 'Email has to be filled' : null,
                        onSaved: (value) => _email = value,
                      ),
                    ),
                  ],
                ),
                new SizedBox(height: 15.0),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 0.0),
                      child: new TextFormField(
                        obscureText: true,
                        decoration: new InputDecoration(labelText: 'Password'),
                        validator: (value) =>
                            value.length < 6 ? 'Password is short' : null,
                        onSaved: (value) => _password = value,
                      ),
                    ),
                  ],
                ),
                new SizedBox(height: 15.0),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 5.0, top: 10.0),
                          child: new Container(
                            alignment: Alignment.center,
                            height: 60.0,
                            decoration: new BoxDecoration(
                                color: Color(0xFF4364A1),
                                borderRadius: new BorderRadius.circular(9.0)),
                            child: new Text(
                              "Login",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        ),
                        // onTap: () {
                        //   validateAndSubmit();

                        //   Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (BuildContext context) => Home()));
                        // },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 5.0, top: 10.0),
                        child: new Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          child: new Text(
                            "Forgot Password",
                            style: new TextStyle(
                              fontSize: 17.0,
                              color: Color(0xFF18D191),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: new Text(
                            "Don't have an account? Create one here",
                            style: new TextStyle(
                              fontSize: 16.0,
                              color: Color(0xFF18D191),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // onTap: () {
                        //   Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (BuildContext context) => Register()));
                        // },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
