import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //backgroundColor: Color(200),
          title: Text("Page de connexion"),
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 200,
            child: Align(
              //alignment: Alignment.center
              //widthFactor: 200,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[_headerBuild()]),
            ),
            decoration: BoxDecoration(color: Colors.grey[700])));
  }
}

// Function to buil the header
Widget _headerBuild() {
  return new Container(
    alignment: Alignment.bottomRight,
    child: Image.asset('img/calender.png'),
    width: 100,
    height: 100,
    //alignment: Alignment.bottomRight
  );
}
