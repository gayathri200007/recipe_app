import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pro_calorie.dart';
import 'pro_create.dart';
import 'pro_homescreen.dart';
import 'pro_profile.dart';

class proHomeScreen extends StatefulWidget {
  @override
  _proHomeScreenState createState() => _proHomeScreenState();
}

class _proHomeScreenState extends State<proHomeScreen> {
  int selectedIndex = 0;
  final List<Widget>_children = [
    prohome(),
    procreate(),
    procal(),
    proprofile(),
  ];
  void onTappedBar(int index)
  {
    setState(() {
      selectedIndex = index;
          });
  }

  @override
  Widget build(BuildContext context) {
    ///For screen size
    return Scaffold(
      body: _children[selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.restaurant),
              title: Text("HOME")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              title: Text("ADD")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.spa),
              title: Text("CALORIE")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text("YOU")
          ),

        ],
        iconSize: 30,
        //currentIndex: selectedIndex,
       // onTap: (index) {
        //  setState(() {
       //     selectedIndex = index;
      //    });
      //  },
        type: BottomNavigationBarType.fixed,
      ),

    );
  }
}