import 'dart:io';

import 'package:dating_project/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:dating_project/constants/custom_icons.dart';
import 'dart:math' as math;

AppBar appBarHome(BuildContext context){
  return AppBar(
    title: Text("Lukis Dating Sim 2021"),
    centerTitle: true,
    automaticallyImplyLeading: false,
    leading: new Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Container(
        decoration: new BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/koala.png")),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(
            color: Colors.white,
            width: 1
          )
        ),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: GestureDetector(
          //onTap: doSomething,
          child: Icon(
            Icons.search
          )

        ),
      )
    ],
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:Alignment.topRight,
          stops: [
            0.1,
            0.3,
            0.5,
            0.7,
            0.9,
          ],
          colors: [
            kPastelYellow,
            kPastelOrange,
            kPastelPink,
            kPastelBlue,
            kPastelGreen
          ]
        )
      ),
    ),
  );
}

AppBar appBarLogIn(BuildContext context){
  return AppBar(
    title: Text("Lukis Dating Sim 2021"),
    centerTitle: true,
    automaticallyImplyLeading: false,
    flexibleSpace: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end:Alignment.topRight,
              stops: [
                0.1,
                0.3,
                0.5,
                0.7,
                0.9,
              ],
              colors: [
                kPastelYellow,
                kPastelOrange,
                kPastelPink,
                kPastelBlue,
                kPastelGreen
              ]
          )
      ),
    ),
  );
}

AppBar appBarLogInSolid(BuildContext context){
  return AppBar(
    title: Text("Lukis Dating Sim 2021"),
    centerTitle: true,
    automaticallyImplyLeading: false,
    backgroundColor: Colors.blue,
  );
}

BottomNavigationBar navBarMain(BuildContext context){
  return BottomNavigationBar(
    items: [
      BottomNavigationBarItem(icon: Icon(CustomIcons.heartloc), label: "Dates"),
      BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile")
    ],
  );
}

InputDecoration textFieldDecoration(String hintText, Color bkgColor){
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      color: Colors.black26,
    ),
    filled: true,
    fillColor: bkgColor,
    border: new OutlineInputBorder(
      borderRadius: const BorderRadius.all(
        const Radius.circular(20.0),
      ),
    ),
  );
}
BoxDecoration buttonDecoration(Color bkgColor){
  return BoxDecoration(
    color: bkgColor,
    borderRadius: BorderRadius.circular(50),
  );
}

TextStyle textStyleNormal(){
  return TextStyle(
    color: Colors.black54,
    fontSize: 16,
    fontWeight: FontWeight.bold
  );
}

class MyArc extends StatelessWidget {
  final double diameter;

  const MyArc({this.diameter = 200});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
      size: Size(diameter, diameter),
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blue;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}