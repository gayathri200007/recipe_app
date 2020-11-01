import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'beg_calorie.dart';
import 'beg_homscreen.dart';
import 'beg_profile.dart';

class begHomeScreen extends StatefulWidget {
  @override
  _begHomeScreenState createState() => _begHomeScreenState();
}

class _begHomeScreenState extends State<begHomeScreen> {
  int selectedIndex = 0;
  final List<Widget>_children = [
    beghome(),
    begcalorie(),
    begprofile(),
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
              icon: Icon(Icons.spa),
              title: Text("CALORIE")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text("YOU")
          ),

        ],
        iconSize: 30,

        type: BottomNavigationBarType.fixed,
      ),

    );
  }
}