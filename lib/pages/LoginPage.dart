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
          child: Column(
            children: <Widget>[_headerBuild()],
          ),
        ));
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
