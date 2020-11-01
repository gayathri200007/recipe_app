import 'package:flutter/material.dart';
import 'beg_login.dart';
class beg_pass extends StatefulWidget {
  @override
  _beg_passState createState() => _beg_passState();
}

class _beg_passState extends State<beg_pass> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0,110.0,0.0,0.0),
                        child: Text(
                            'Forgot',
                            style: TextStyle(
                                fontSize: 80.0, fontWeight: FontWeight.bold)
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(16.0,175.0,0.0,0.0),
                        child: Text(
                            'Password',
                            style: TextStyle(
                                fontSize: 80.0, fontWeight: FontWeight.bold)
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(370.0,175.0,0.0,0.0),
                        child: Text(
                            '?',
                            style: TextStyle(
                                fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.greenAccent)
                        ),
                      )
                    ]
                )
            ),
            Container(
              padding: EdgeInsets.only(top: 35.0,left: 20.0,right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'NEW PASSWORD',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent)
                        )
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'CONFIRM PASSWORD',
                        labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.greenAccent)
                        )
                    ),
                    obscureText: true,
                  ),

                  SizedBox(height: 40.0),
                  Container(
                    height: 50.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(25.0),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>beg_Login()));
                        },
                        child: Center(
                          child: Text(
                            'SET PASSWORD',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              fontSize:18.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 50.0,
                    color: Colors.transparent,
                    child: Material(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                      elevation: 6.0,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child:

                        Center(
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
                ],
              ),
            ),


          ],
        )
    );
  }
}
