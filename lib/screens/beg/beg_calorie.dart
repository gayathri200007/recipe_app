import 'package:flutter/material.dart';
class begcalorie extends StatefulWidget {
  @override
  _begcalorieState createState() => _begcalorieState();
}

class _begcalorieState extends State<begcalorie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 80,horizontal: 0.5),
                  child: Container(

                    height: 600,
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 1,
                      margin: EdgeInsets.all(10),
                      color: Colors.tealAccent,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child:  Center(
                                child:  Column(
                                    children : [
                                      Padding(padding: EdgeInsets.only(top: 30.0)),
                                      Text('Calorie',
                                        style:
                                        TextStyle(
                                            color:Colors.black,
                                            fontSize: 35.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 40.0)),
                                      TextFormField(
                                        decoration:  InputDecoration(
                                          labelText: "Meal 1",
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:  BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                                color: Colors.white
                                            ),
                                          ),
                                          //fillColor: Colors.green
                                        ),
                                        validator: (val) {
                                          if(val.length==0) {
                                            return "Cannot be empty";
                                          }else{
                                            return null;
                                          }
                                        },
                                        keyboardType: TextInputType.text,
                                        style:
                                        TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 10.0)),
                                      TextFormField(
                                        decoration:  InputDecoration(
                                          labelText: "Meal 2",
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:  BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                            ),
                                          ),
                                          //fillColor: Colors.green
                                        ),
                                        validator: (val) {
                                          if(val.length==0) {
                                            return "Cannot be empty";
                                          }else{
                                            return null;
                                          }
                                        },
                                        keyboardType: TextInputType.text,
                                        style:
                                        TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 10.0)),
                                      TextFormField(
                                        decoration:  InputDecoration(
                                          labelText: "Meal 3",
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderRadius:  BorderRadius.circular(25.0),
                                            borderSide: BorderSide(
                                            ),
                                          ),
                                          //fillColor: Colors.green
                                        ),
                                        validator: (val) {
                                          if(val.length==0) {
                                            return "Cannot be empty";
                                          }else{
                                            return null;
                                          }
                                        },
                                        keyboardType: TextInputType.text,
                                        style: new TextStyle(
                                          fontFamily: "Poppins",
                                          color: Colors.black,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(top: 20.0)),
                                    ]
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                              right: 50.0,
                            ),

                          ),

                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ButtonTheme(
                              padding: EdgeInsets.only(),
                              buttonColor: Colors.white,
                              height: 50,
                              minWidth: double.infinity,
                              child: RaisedButton(
                                child: Text(
                                  'Calculate',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 150.0),
                            margin: EdgeInsets.only(
                              bottom: 30.0,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.teal[300],
                                borderRadius: BorderRadius.circular(22.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 1.0,
                                    blurRadius: 6.0,
                                  ),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        RichText(
                                          text: TextSpan(
                                            text: '',
                                            style: TextStyle(
                                              color: Colors.purple,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Value',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6.0,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                //Icon(
                                // LineAwesomeIcons.heart,
                                //  color: lightColor,
                                //  size: 36,
                                //),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
