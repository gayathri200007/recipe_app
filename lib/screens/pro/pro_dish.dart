import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class prodish extends StatelessWidget {
  final image,name,cal,ing,time,rec1,rec2,rec3,rec4,rec5,rec6,rec7,dec;
  Color iconcolor = Colors.black;
  ///For hero tagging and showing relative image
  prodish(this.image,this.name,this.cal,this.ing,this.time,this.rec1,this.rec2,this.rec3,this.rec4,this.rec5,this.rec6,this.rec7,this.dec);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            //first show img in background
            Hero(
              child: Container(
                height: size.height*0.45,
                child: Image.asset(image, fit: BoxFit.cover,),
              ),
              tag:'dish1.jpg',
            ),
            DraggableScrollableSheet(
                maxChildSize: 1,
                initialChildSize: 0.6,
                minChildSize: 0.6,
                builder: (context, controller)
                {
                  return SingleChildScrollView(
                    controller: controller,
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                          )
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "$name",
                                style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.redAccent,
                                iconSize: 30,
                                onPressed: () {
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          //container for food information
                          Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                        Border.all(color: Colors.grey[400])
                                    ),
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Calories",
                                          style:GoogleFonts.poppins(
                                              fontSize: 18,
                                              color:Colors.black
                                          ),
                                        ),
                                        Text(
                                          "$cal",
                                          style:GoogleFonts.poppins(
                                              fontSize: 17,
                                              color:Colors.black45,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                        Border.all(color: Colors.grey[400])
                                    ),
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Ingredients",
                                          style:GoogleFonts.poppins(
                                              fontSize: 18,
                                              color:Colors.black
                                          ),
                                        ),
                                        Text(
                                          "$ing",
                                          style:GoogleFonts.poppins(
                                              fontSize: 17,
                                              color:Colors.black45,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox( width: 10,),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border:
                                        Border.all(color: Colors.grey[400])
                                    ),
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Time",
                                          style:GoogleFonts.poppins(
                                              fontSize: 18,
                                              color:Colors.black
                                          ),
                                        ),
                                        Text(
                                          "$time",
                                          style:GoogleFonts.poppins(
                                              fontSize:17 ,
                                              color:Colors.black45,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "RECIPE",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '$rec1',
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '$rec2',
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '$rec3',
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '$rec4',
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '$rec5',
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '$rec6',
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '$rec7',
                            style:GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "COOKING METHOD",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '$dec',
                            style: GoogleFonts.poppins(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              // builder: (context, controller),
            )
            //container for more contents
          ],
        ),
      ),
    );
  }
}
