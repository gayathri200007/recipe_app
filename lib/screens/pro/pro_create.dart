import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipeapp/models/dish.dart';
import 'package:recipeapp/models/recipe.dart';
import 'package:recipeapp/data/database_helper.dart';

import '../../models/recipe.dart';
import 'createview.dart';
class procreate extends StatefulWidget {
  @override
  _procreateState createState() => _procreateState();
}

class _procreateState extends State<procreate> {
  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String name,time,rec1,rec2,rec3,rec4,rec5,rec6,method,image;
  int ing,cal;
  @override
  Widget build(BuildContext context) {
    var createBtn= Padding(
      padding: const EdgeInsets.all(20.0),
      child: ButtonTheme(
        padding: EdgeInsets.only(),
        buttonColor: Colors.purple[900],
        height: 50,
        minWidth: double.infinity,
        child: RaisedButton(
          child:
          new Text(
            "Create",
            style: GoogleFonts.poppins(
                textStyle:TextStyle(
                  color: Colors.white,
                //  fontWeight: FontWeight.bold,
                  fontSize: 10,
                )
            ),
            textScaleFactor: 2.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {
            _submit();

          },
        ),
      ),
    );
    var createform=  Column(
        children : [
         // Padding(padding: EdgeInsets.only(top: 10.0)),
          new Form(
            key: formKey,
            child: new Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 40.0)),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Dish Name",
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
                  onSaved: (val) => name = val,
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize: 17,
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextFormField(

                  decoration:  InputDecoration(
                    labelText: "Time",
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
                  onSaved: (val) => time = val,
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize:  17,
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Number of ingredients(less than six )",
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
                  onSaved: (val) => ing = int.parse(val),
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize:  17,
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Recipe 1",
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
                  onSaved: (val) => rec1 = val,
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize:  17,
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Recipe 2",
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
                  onSaved: (val) => rec2 = val,
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize:  17,
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Recipe 3",
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
                  onSaved: (val) => rec3 = val,
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize:  17,
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Recipe 4",
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
                  onSaved: (val) => rec4 = val,
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize:  17,
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Recipe 5",
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
                  onSaved: (val) => rec5 = val,
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize:  17,
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Recipe 6",
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
                  onSaved: (val) => rec6 = val,
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize:  17,
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Calories",
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
                  onSaved: (val) => cal = int.parse(val),
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize:  17,
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Cooking Method",
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
                  onSaved: (val) => method = val,
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize:  17,
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: "Image URL",
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
                  onSaved: (val) => image = val,
                  style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: Colors.black,
                        //  fontWeight: FontWeight.bold,
                        fontSize:  17,
                      )
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
              ],
            ),
          ),
          createBtn
        ]
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
          child:Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top:60.0)),
             Container(
              child:
              new Text(
                "Add Your Recipe",
                style: GoogleFonts.oswald(
                    textStyle:TextStyle(
                      color: Colors.purple[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )
                ),
                textScaleFactor: 2.0,
              ),
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 0.5),
                  child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child:  Center(
                              child: createform,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                              right: 50.0,
                            ),

                          ),

                          SizedBox(height: 10),

                        ],
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
  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        var dish1 = new Dish(name,time,cal,ing,method,image);
        var db = new DatabaseHelper();
        db.saveDish(dish1);
        var recipe1 = new Recipe(name,rec1,rec2,rec3,rec4,rec5,rec6);
        db.saveRecipe(recipe1);
        _isLoading = false;
        Navigator.push(context, MaterialPageRoute(builder: (context)=>viewcreate()),);
        if (formKey.currentState.validate()) {}
      });
    }
  }
}
