import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipeapp/screens/beg/beg_login.dart';
import 'package:recipeapp/data/database_helper.dart';
import 'package:recipeapp/models/user.dart';

import 'loginpage.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => new _RegisterState();
}

class _RegisterState  extends State<Register> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String _name, _username, gender, email, _password;

  int  phno,age;


  @override
  Widget build(BuildContext context) {
    _ctx = context;
    var loginBtn =  Padding(
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
            _submit();

          },
        ),
      ),
    );



    var loginForm = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Text(
          "Register",
          style: GoogleFonts.lato(
              textStyle:TextStyle(
                color: Colors.teal[800],
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )
          ),
          textScaleFactor: 2.0,
        ),
        new Form(
          key: formKey,
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  keyboardType: TextInputType.text,
                  onSaved: (val) => _name = val,
                  decoration: new InputDecoration(labelText: "Name"),
                  validator: (String name) {
                    if (name.isEmpty)
                      return 'Enter your name';
                    else
                      return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(

                  onSaved: (val) => _username = val,
                  decoration: new InputDecoration(labelText: "User Name"),
                  validator: (String name) {
                    if (name.isEmpty)
                      return 'Enter your name';
                    else
                      return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  onSaved: (val) => _password = val,
                  decoration: new InputDecoration(labelText: "Password"),
                  validator: (String _password) {
                    if (_password.length != 8 && _password.isEmpty)
                      return 'Password length should be 8';
                    else
                      return null;
                  },

                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  keyboardType: TextInputType.number,
                  onSaved: (val) => phno = int.parse(val),
                  decoration: new InputDecoration(labelText: "phone Number"),
                  validator: (String phno) {
                    if (phno.length != 10 && phno.isEmpty)
                      return 'Invalid mobile number';
                    else
                      return null;
                  },
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (val) => email = val,
                  decoration: new InputDecoration(labelText:"Email"),
                  validator: (String email) {
                    if (email.isEmpty)
                      return 'Invalid Email';
                    else
                      return null;
                  },
                ),
              ),
            ],
          ),
        ),
        loginBtn
      ],
    );

    return new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: new AppBar(
          title: new Text("Register"),
        ),
        key: scaffoldKey,
        body: SingleChildScrollView(
          child: new Container(
            child: new Center(
              child: loginForm,
            ),
          ),
        )
    );
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        var user = new User(_name, _username, _password,phno,email, null);
        var db = new DatabaseHelper();
        db.saveUser(user);
        _isLoading = false;
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()),);
        if (formKey.currentState.validate()) {}
      });
    }
  }
}
