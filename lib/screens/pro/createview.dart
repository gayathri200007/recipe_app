import 'package:flutter/material.dart';
import 'package:recipeapp/screens/pro/pro_create.dart';
import 'package:recipeapp/screens/pro/pro_dish.dart';
class viewcreate extends StatefulWidget {
  @override
  _viewcreateState createState() => _viewcreateState();
}
const image1='https://image.shutterstock.com/image-photo/succulent-thick-juicy-portions-grilled-260nw-138421859.jpg';
const image2='https://image.scoopwhoop.com/w620/s3.scoopwhoop.com/anj/df/3ad5ced0-808e-46a6-b946-07ef7b4374cb.jpg.webp';
const image3='https://image.scoopwhoop.com/w620/s4.scoopwhoop.com/anj/df/ea65970b-83ae-4761-9c55-bfed46066fc5.jpg.webp';
const image4='https://i.guim.co.uk/img/static/sys-images/Guardian/Pix/pictures/2013/3/6/1362575285355/Shelina-Permalloos-Maurit-006.jpg?width=620&quality=85&auto=format&fit=max&s=08ab8640bd849d67efdbe9a7e98ec6c0';
const mainBgColor = Color(0xFFf2f2f2);
const darkColor = Color(0xFF2A0B35);
const midColor = Color(0xFF522349);
const lightColor = Color(0xFFA52C4D);
const darkRedColor = Color(0xFFFA695C);
const lightRedColor = Color(0xFFFD685A);

const purpleGradient = LinearGradient(
  colors: <Color>[darkColor, midColor, lightColor],
  stops: [0.0, 0.5, 1.0],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
class _viewcreateState extends State<viewcreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.topCenter,
              overflow: Overflow.visible,
              children: <Widget>[
                _backBgCover(),
                _greetings()
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    _specialistsCardInfo2(),
                    _specialistsCardInfo3(),
                    _specialistsCardInfo4(),
                    _specialistsCardInfo5()
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
  Container _backBgCover() {
    return Container(
      height: 150.0,
      decoration: BoxDecoration(
        gradient: purpleGradient,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
    );
  }

  Positioned _greetings() {
    return Positioned(
      left: 20,
      bottom: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          SizedBox(
            height: 10,
          ),
          Text(
            'Your Dishes',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _specialistsCardInfo2() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
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
              CircleAvatar(
                backgroundColor: Color(0xFFD9D9D9),
                backgroundImage: NetworkImage(image2),
                radius: 36.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '\n',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.3,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Mistique',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: '3hrs',
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>prodish(image2)),);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: const BoxDecoration(
                        gradient: purpleGradient,
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                            minWidth: 100.0,
                            minHeight: 36.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: const Text(
                          'Visit',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
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
    );
  }
  Widget _specialistsCardInfo3() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
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
              CircleAvatar(
                backgroundColor: Color(0xFFD9D9D9),
                backgroundImage: NetworkImage(image3),
                radius: 36.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '\n',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.3,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Tuna Nicoise',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: '3hrs',
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>prodish(image3)),);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: const BoxDecoration(
                        gradient: purpleGradient,
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                            minWidth: 100.0,
                            minHeight: 36.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: const Text(
                          'Visit',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
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
    );
  }
  Widget _specialistsCardInfo4() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
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
              CircleAvatar(
                backgroundColor: Color(0xFFD9D9D9),
                backgroundImage: NetworkImage(image4),
                radius: 36.0,
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: '\n',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.3,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Mauritian Octopus Salad',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: '4hrs',
                          style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  RaisedButton(
                    onPressed: () {
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>prodish(image4)),);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: const BoxDecoration(
                        gradient: purpleGradient,
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                            minWidth: 100.0,
                            minHeight: 36.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: const Text(
                          'Visit',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
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
    );
  }
  Widget _specialistsCardInfo5() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>procreate()),);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: const EdgeInsets.all(5.0),
                    child: Ink(
                      decoration: const BoxDecoration(
                        gradient: purpleGradient,
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                            minWidth: 300.0,
                            minHeight: 40.0), // min sizes for Material buttons
                        alignment: Alignment.center,
                        child: const Text(
                          'Create',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ),
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
    );
  }
}
