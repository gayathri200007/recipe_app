import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
class procreate extends StatefulWidget {
  @override
  _procreateState createState() => _procreateState();
}
const img='https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500';
class _procreateState extends State<procreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body: Container(
          child: SingleChildScrollView(
            /**scrollDirection: Axis.vertical,**/
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(img),
                    fit: BoxFit.cover,

                  ),
                ),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: Container(
                                margin: EdgeInsets.only(top: 50),
                                child: Center(
                                  child: Text("ADD YOUR RECIPE", style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(143, 148, 251, .2),
                                        blurRadius: 20.0,
                                        offset: Offset(0, 10)
                                    )
                                  ]
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Name of the Recipe",
                                            hintStyle: TextStyle(color: Colors.grey[900])
                                        ),
                                      ),
                                      /**padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
                                          child: Material(
                                          elevation: 10.0,
                                          borderRadius: BorderRadius.circular(25.0),
                                          child: TextFormField(
                                          decoration: InputDecoration(
                                          hintText: 'diiii',
                                          hintStyle: TextStyle(color: Colors.grey)
                                          ),
                                          ),
                                          ),**/
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Time",
                                            hintStyle: TextStyle(color: Colors.grey[900])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "No of Ingredients",
                                            hintStyle: TextStyle(color: Colors.grey[900])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Recipe 1",
                                            hintStyle: TextStyle(color: Colors.grey[900])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Recipe 2",
                                            hintStyle: TextStyle(color: Colors.grey[900])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Recipe 3",
                                            hintStyle: TextStyle(color: Colors.grey[900])
                                        ),
                                      ),
                                    ),

                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Calories",
                                            hintStyle: TextStyle(color: Colors.grey[900])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Cooking Method",
                                            hintStyle: TextStyle(color: Colors.grey[900])
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Add Image URL",
                                            hintStyle: TextStyle(color: Colors.grey[900])
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ButtonTheme(
                                padding: EdgeInsets.only(),
                                buttonColor: Colors.tealAccent[500],
                                height: 50,
                                minWidth: double.infinity,
                                child: RaisedButton(
                                  child: Text(
                                    'Create',
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
                            /**SizedBox(height: 70,),
                                FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),**/
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
          )
      ),
    );
  }
}
