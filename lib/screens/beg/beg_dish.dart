import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class begdish extends StatelessWidget {
  final image;

  ///For hero tagging and showing relative image
  begdish(this.image);
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
                                "DISH NAME",
                                style: GoogleFonts.roboto(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              Spacer(),
                              IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.redAccent,
                                iconSize: 30,
                                onPressed: () {},
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
                                        Border.all(color: Colors.grey[200])
                                    ),
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Calories",
                                          style:GoogleFonts.roboto(
                                            fontSize: 20,
                                            color:Colors.blueGrey
                                          ),
                                        ),
                                        Text(
                                          "Value",
                                          style:GoogleFonts.roboto(
                                              fontSize: 17,
                                              color:Colors.grey[900],
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
                                        Border.all(color: Colors.grey[200])
                                    ),
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Ingrediants",
                                          style:GoogleFonts.roboto(
                                              fontSize: 20,
                                              color:Colors.blueGrey
                                          ),
                                        ),
                                        Text(
                                          "Value",
                                          style:GoogleFonts.roboto(
                                              fontSize: 17,
                                              color:Colors.grey[900],
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
                                        Border.all(color: Colors.grey[200])
                                    ),
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Time",
                                          style:GoogleFonts.roboto(
                                              fontSize: 20,
                                              color:Colors.blueGrey
                                          ),
                                        ),
                                        Text(
                                          "Value",
                                          style:GoogleFonts.roboto(
                                              fontSize:17 ,
                                              color:Colors.grey[900],
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
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'recipe 1',
                                style:GoogleFonts.roboto(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.blueGrey,
                                ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'recipe 2',
                            style:GoogleFonts.roboto(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Colors.blueGrey,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'recipe 3',
                            style:GoogleFonts.roboto(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Colors.blueGrey,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'recipe 4',
                            style:GoogleFonts.roboto(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Colors.blueGrey,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'recipe 5',
                            style:GoogleFonts.roboto(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Colors.blueGrey,
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "COOKING METHOD",
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id iaculis elit. Mauris congue nisl at est placerat egestas. Aliquam bibendum placerat pretium."" Nullam tincidunt massa sed velit sollicitudin pulvinar. Phasellus "
                                "vitae nisi justo. Quisque pulvinar pretium mauris, eget condimentum felis pretium ut. Cras tempor convallis diam, et consectetur tellus interdum quis. Sed imperdiet auctor metus in vulputate. Interdum et malesuada fames ac "
                                "ante ipsum primis in faucibus.Phasellus et faucibus sem. Nunc at nibh lacinia mauris ullamcorper euismod malesuada at libero. Cras quis egestas est. Donec dapibus tincidunt tincidunt. Maecenas est enim, interdum sed eleifend a, "
                                "hendrerit eleifend diam.",
                            style: GoogleFonts.roboto(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Colors.blueGrey,
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
