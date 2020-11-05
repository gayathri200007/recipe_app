import 'package:flutter/material.dart';
import 'package:recipeapp/screens/pro/pro_dish.dart';
import 'travelcard.dart';
class prosearch extends StatefulWidget {
  @override
  _prosearchState createState() => _prosearchState();
}

class _prosearchState extends State<prosearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            Text(
              "TASTE DIARY",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Find Your Recipe",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            //Now let's add some elevation to our text field
            //to do this we need to wrap it in a Material widget
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search your Recipe here....",
                  prefixIcon: IconButton(
                   icon: Icon(Icons.search),
                    color: Colors.black54,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => prodish('https://10play.com.au/ip/s3/2020/07/17/61c7678ea0b0ab42351df809d932a8d8-975791.jpg?image-profile=image_max&io=landscape')
                      ));
                    },
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            //Now let's Add a Tabulation bar
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          //Now let's create our first tab page
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Now let's add and test our first card
                                travelCard('https://10play.com.au/ip/s3/2020/07/17/61c7678ea0b0ab42351df809d932a8d8-975791.jpg?image-profile=image_max&io=landscape', "Pistachio Financier"),
                                travelCard('https://10play.com.au/ip/s3/2020/07/08/e5781e538fb089676e8b4842a890c04f-973966.jpg?image-profile=image_max&io=landscape', "Toffee Apple"),
                                travelCard('https://10play.com.au/ip/s3/2020/07/17/2a234be38f5a19f27d267d81267c8656-975792.jpg?image-profile=image_max&io=landscape', "Scallops with Turnips"),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Here you can add what ever you want
                                travelCard('', ""),
                                travelCard('', ""),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
