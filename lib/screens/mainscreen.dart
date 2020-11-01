import 'package:flutter/material.dart';
import 'beg/beg_login.dart';
import 'pro/loginpage.dart';
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(131, 15, 15, 1),
                  Color.fromRGBO(240, 28, 28, 1)
                ]
            )
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 28.0,
              vertical: 100.0,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('TASTE',
                      style: TextStyle(fontFamily: 'Montserrat',
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(252,104, 107, 1),
                      ),
                    ),
                    Text('DIARY',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 38.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(250,50, 50, 1),
                      ),
                    ),
                  ],
                ),
                Text('Find what you love to cook',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 60.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    shadowColor: Colors.redAccent,
                    color: Color.fromRGBO(255, 14, 22, 0.9),
                    elevation: 20.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>beg_Login()),);
                      },
                      child: Center(
                        child: Text(
                          'JOIN AS BEGINNER',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            fontSize:20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                Container(
                  height: 60.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(25.0),
                    shadowColor: Colors.redAccent,
                    color: Color.fromRGBO(255, 14, 22, 0.9),
                    elevation: 10.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()),);
                      },
                      child: Center(
                        child: Text(
                          'JOIN AS PROFESSIONAL',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            fontSize:20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

