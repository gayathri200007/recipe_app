import 'package:flutter/material.dart';
import 'package:recipeapp/data/database_helper.dart';
import 'package:recipeapp/models/user.dart';
import 'package:recipeapp/screens/pro/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
class beg_reg extends StatefulWidget {
  @override
  _beg_regState createState() => _beg_regState();
}

class _beg_regState extends State<beg_reg> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  String name, username, email, password;

  int phno ;
  @override
  Widget build(BuildContext context) {
    var signupBtn=  Container(
        height: 50.0,
        width: 250,
        child: Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.greenAccent,
          color: Colors.green,
          elevation: 7.0,
          child: InkWell(
            onTap: () {
              _submit;
            },
            child: Center(
              child: Text(
                'SIGNUP',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ));
    var signupForm=  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 70.0, 0.0, 0.0),
                  child: Text(
                    'Signup',
                    style:
                    TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(260.0, 75.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                )
              ],
            ),
          ),
            Padding(
              padding: EdgeInsets.all(20.0),
              ),
              new Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(

                    decoration: InputDecoration(
                        labelText: '\tNAME',
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                    ),
                    keyboardType: TextInputType.text,
                    onSaved: (val) => name = val,
                    validator: (String name) {
                      if (name.isEmpty)
                        return 'Enter your name';
                      else
                        return null;
                    },
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: '\tUSERNAME (Should be unique)',
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                    ),
                    keyboardType: TextInputType.text,
                    onSaved: (val) => username = val,
                    validator: (String username) {
                      if (username.isEmpty)
                        return 'Enter your username';
                      else
                        return null;
                    },
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: '\tPASSWORD ',
                    ),
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    onSaved: (val) => password = val,
                    validator: (String password) {
                      if (password.length != 8 && password.isEmpty)
                        return 'Password length should be 8';
                      else
                        return null;
                    },
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: '\tCONTACT NO: ',
                    ),
                    keyboardType: TextInputType.number,
                    onSaved: (val) => phno = int.parse(val),
                    validator: (String phno) {
                      if (phno.length != 10 && phno.isEmpty)
                        return 'Invalid mobile number';
                      else
                        return null;
                    },
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: '\tEMAIL',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (val) => email = val,
                    validator: (String email) {
                      if (email.isEmpty)
                        return 'Invalid email address';
                      else
                        return null;
                    },
                  ),
                  SizedBox(height: 45.0),
                  /*
                  SizedBox(height: 30.0),
                  Container(
                    height: 50.0,
                    color: Colors.transparent,
                    child: Material(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                      elevation: 9.0,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Center(
                          child: Text('Go Back',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                   */
                ],
              ),
              ),
            signupBtn,
        ]
    );
    return new Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
         /*
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 70.0, 0.0, 0.0),
                  child: Text(
                    'Signup',
                    style:
                    TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(260.0, 75.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'NAME',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'USERNAME (Should be unique)',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        // hintText: 'EMAIL',
                        // hintStyle: ,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'PASSWORD ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                    obscureText: true,
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'CONTACT NO: ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),

                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green))),
                  ),
                  SizedBox(height: 45.0),
                  signupBtn,
                  SizedBox(height: 30.0),
                  Container(
                    height: 50.0,
                    color: Colors.transparent,
                    child: Material(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white,
                          elevation: 9.0,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Center(
                          child: Text('Go Back',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                ],
              )
          ),
        ]
        )
        */
          child: signupForm,
        ),
    );
  }
  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        var user = new User(name, username, password,phno,email, null);
        var db = new DatabaseHelper();
        db.saveUser(user);
        _isLoading = false;
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()),);
        if (formKey.currentState.validate()) {}
      });
    }
  }
}
