import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pro_dish.dart';
import 'pro_fav.dart';
import 'pro_search.dart';

class prohome extends StatefulWidget {
  @override
  _prohomeState createState() => _prohomeState();
}

class _prohomeState extends State<prohome> {
  ///Image paths and food names
  final images = [
    "assets/pics/burger.jpg",
    "assets/pics/chicken_f.jpeg",
    "assets/pics/chiken_g.jpg",
    "assets/pics/spaghetti.jpg",
    "assets/pics/pizza.jpg"
  ];

  final foodNames = [
    "Grilled Burger",
    "Crispy Fried Chicken",
    "Grilled Chicken",
    "Pasta",
    "Pizza"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ///Container for Header
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "EXPLORE YOUR TASTE!",
                          style: GoogleFonts.playfairDisplay(fontSize: 30,
                              color: Colors.orange),
                        ),
                      ),

                      ///For spacing
                      SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        color: Colors.grey[800],
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>prosearch()),);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite),
                        color: Colors.grey[800],
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>profav()),);
                        },
                      ),
                    ],
                  ),
                ),

                ///For vertical Spacing
                SizedBox(
                  height: 32,
                ),

                ///Container For List of Recipes type
                ///Give 25 percent height relative to screen
                Container(
                  height: size.height * 0.25,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return AspectRatio(
                            aspectRatio: 0.9 / 1,

                            ///Width : screen,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    child: ClipRRect(
                                      child: Image.asset(
                                        images[index],
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),

                                ///Add Text Also,
                                SizedBox(
                                  height: 8,
                                ),

                                ///For spacing
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Text(
                                    "${foodNames[index]} Recipes",
                                    style: GoogleFonts.roboto(
                                        color: Colors.grey[800], fontSize: 11),
                                  ),
                                )
                              ],
                            ));
                      },
                      separatorBuilder: (context, _) => SizedBox(
                        width: 16,
                      ),
                      itemCount: 4),
                ),

                ///For vertical spacing
                SizedBox(
                  height: 32,
                ),

                ///For quick recipe list
                Container(
                  height: size.height * 0.4,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => prodish(images[4 - index])
                            ));
                          },
                          child: AspectRatio(
                              aspectRatio: 0.9 / 1,

                              ///Width : screen,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Hero(
                                      child: Container(
                                        child: ClipRRect(
                                          child: Image.asset(
                                            images[4 - index],
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                      ),
                                      tag: images[4 - index],
                                    ),
                                  ),

                                  ///Add Text Also,
                                  SizedBox(
                                    height: 8,
                                  ),

                                  ///For spacing
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16.0),
                                    child: Text(
                                      "${foodNames[4 - index]}",
                                      style: GoogleFonts.roboto(
                                          color: Colors.grey[800],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )),
                        );
                      },
                      separatorBuilder: (context, _) => SizedBox(
                        width: 16,
                      ),
                      itemCount: 4),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}