import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/data/database_helper.dart';
import 'package:recipeapp/models/user.dart';
import 'package:recipeapp/screens/beg/beg_homscreen.dart';
import 'package:recipeapp/screens/beg/beg_login.dart';
import 'package:recipeapp/screens/beg/begLoginPresenter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'beg_home.dart';
import 'beg_register.dart';

class beg_Login extends StatefulWidget {
  @override
  _beg_LoginState createState() => new _beg_LoginState();
}

class _beg_LoginState extends State<beg_Login> implements LoginPageContract {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String _email, _password;

  LoginPagePresenter _presenter;

  _LoginPageState() {
    _presenter = new LoginPagePresenter(this);
  }

  void _register() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>beg_reg()),);
  }


  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        //_isLoading = true;
        Navigator.push(context, MaterialPageRoute(builder: (context)=>begHomeScreen()),);

        form.save();
<<<<<<< HEAD
        //  _presenter.doLogin(_email, _password);
=======
      //  _presenter.doLogin(_email, _password);
>>>>>>> 828bb77e98e2b88ef165ff51e5a5d8bd12b60923

      });
    }
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn = Padding(
      padding: const EdgeInsets.all(8.0),
      child: ButtonTheme(
        padding: EdgeInsets.only(),
<<<<<<< HEAD
        buttonColor: Colors.greenAccent,
=======
        buttonColor: Colors.white70,
>>>>>>> 828bb77e98e2b88ef165ff51e5a5d8bd12b60923
        height: 50,
        minWidth:350,
        child: RaisedButton(
          child: Text(
            'Login',
<<<<<<< HEAD
            style: GoogleFonts.aladin(
                textStyle: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {
            _submit();

          },
        ),
      ),
    );

    var registerBtn = Padding(
      padding: const EdgeInsets.all(8.0),
      child: ButtonTheme(
        padding: EdgeInsets.only(),
        buttonColor: Colors.greenAccent,
        height: 50,
        minWidth: 350,
        child: RaisedButton(
          child: Text(
            'Register',
            style: GoogleFonts.aladin(
                textStyle: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {
            _register();

          },
        ),
      ),
    );
    var docBtn = Padding(
      padding: const EdgeInsets.all(8.0),
      child: ButtonTheme(
        padding: EdgeInsets.only(),
        buttonColor: Colors.white70,
        height: 50,
        minWidth: 350,
        child: RaisedButton(
          child: Text(
            'Login as DOCTOR',
=======
>>>>>>> 828bb77e98e2b88ef165ff51e5a5d8bd12b60923
            style: TextStyle(
              color: Colors.teal[800],
              fontSize: 20,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {
<<<<<<< HEAD
=======
            _submit();

          },
        ),
      ),
    );

    var registerBtn = Padding(
      padding: const EdgeInsets.all(8.0),
      child: ButtonTheme(
        padding: EdgeInsets.only(),
        buttonColor: Colors.white70,
        height: 50,
        minWidth: 350,
        child: RaisedButton(
          child: Text(
            'Register',
            style: TextStyle(
              color: Colors.teal[800],
              fontSize: 20,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {
            _register();

          },
        ),
      ),
    );
    var docBtn = Padding(
      padding: const EdgeInsets.all(8.0),
      child: ButtonTheme(
        padding: EdgeInsets.only(),
        buttonColor: Colors.white70,
        height: 50,
        minWidth: 350,
        child: RaisedButton(
          child: Text(
            'Login as DOCTOR',
            style: TextStyle(
              color: Colors.teal[800],
              fontSize: 20,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          onPressed: () {
>>>>>>> 828bb77e98e2b88ef165ff51e5a5d8bd12b60923
            //_doc();

          },
        ),
      ),
    );
    var loginForm = new Column(
<<<<<<< HEAD
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0,80.0,0.0,0.0),
                    child: Text(
                        'Hello',
                        style: GoogleFonts.aladin(
                            textStyle: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold)
                        ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16.0,170.0,0.0,0.0),
                    child: Text(
                        'There',
                      style: GoogleFonts.aladin(
                          textStyle: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold)
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(170.0,170.0,0.0,0.0),
                    child: Text(
                        '.',
                      style: GoogleFonts.aladin(
                          textStyle: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,
                          )
                      ),
                    ),
                  )
                ]
            )
=======
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Text(
          " \n Login",
          style: GoogleFonts.lato(
              textStyle:TextStyle(
                color: Colors.teal[800],
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )
          ),
          textScaleFactor: 2.0,
>>>>>>> 828bb77e98e2b88ef165ff51e5a5d8bd12b60923
        ),
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(20.0),
                child: new TextFormField(
                  onSaved: (val) => _email = val,
<<<<<<< HEAD
                  decoration: new InputDecoration(labelText: "Name",
                    labelStyle: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                  validator: (String _email){
                    if (_email.isEmpty) return 'Enter your Name';
                    else return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(20.0),
                child: new TextFormField(
                  onSaved: (val) => _password = val,
                  decoration: new InputDecoration(labelText: "Password",
                    labelStyle: GoogleFonts.aladin(
                        textStyle: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold)
                    ),
                  ),
                  validator: (String _password) {
                    if (_password.length !=8 && _password.isEmpty) return 'Password length should be 8';
                    else return null;
                  },
                ),
=======
                  decoration: new InputDecoration(labelText: "Name"),
                  validator: (String _email){
                    if (_email.isEmpty) return 'Enter your Name';
                    else return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(20.0),
                child: new TextFormField(
                  onSaved: (val) => _password = val,
                  decoration: new InputDecoration(labelText: "Password"),
                  validator: (String _password) {
                    if (_password.length !=8 && _password.isEmpty) return 'Password length should be 8';
                    else return null;
                  },
                ),
>>>>>>> 828bb77e98e2b88ef165ff51e5a5d8bd12b60923
              )
            ],
          ),
        ),
<<<<<<< HEAD

        new Padding(
            padding: const EdgeInsets.all(10.0),
            child: loginBtn),
        new Padding(
            padding: const EdgeInsets.all(10.0),
            child: registerBtn,),

        /**new Padding(
            padding: const EdgeInsets.all(10.0),
            child: docBtn),
**/
=======
        new Padding(
            padding: const EdgeInsets.all(10.0),
            child: loginBtn),
        registerBtn,
        new Padding(
            padding: const EdgeInsets.all(10.0),
            child: docBtn),

>>>>>>> 828bb77e98e2b88ef165ff51e5a5d8bd12b60923
      ],
    );

    return new Scaffold(
      resizeToAvoidBottomInset: false,
<<<<<<< HEAD
=======
      appBar: new AppBar(
        title: new Text(" \t Login Page"),
      ),
>>>>>>> 828bb77e98e2b88ef165ff51e5a5d8bd12b60923
      key: scaffoldKey,
      body: new Container(
        child: new Center(
          child: loginForm,
        ),
      ),
    );
  }

  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
    _showSnackBar("Login not successful");
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void onLoginSuccess(User user) async {
    // TODO: implement onLoginSuccess
    if(user.username == ""){
      _showSnackBar("Login not successful");
    }else{
      _showSnackBar(user.toString());
    }
    setState(() {
      _isLoading = false;
    });
    if(user.flaglogged == "logged"){
      print("Logged");
      Navigator.push(context, MaterialPageRoute(builder: (context)=>begHomeScreen()),);
    }else{
      print("Not Logged");
    }
  }
}