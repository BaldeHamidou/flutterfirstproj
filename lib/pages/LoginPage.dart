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
        body: Center(
          //padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          //height: 150,
          //widthFactor: 200,
          //heightFactor: 200,
          //child: Align(
          //alignment: Alignment.center
          //widthFactor: 200,
          //child: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _headerBuild(),
                Expanded(
                    child: Text(
                  'LOOMOH RENDEZ-VOUS',
                  textAlign: TextAlign.center,
                ))
              ]),

          // )
          //decoration: BoxDecoration(color: Colors.grey[700])
        ));
  }
}

// Function to buil the header
Widget _headerBuild() {
  return new Container(
    alignment: Alignment.bottomRight,
    child: Image.asset('img/calender-2.png'),
    width: 100,
    //height: 10,
    //alignment: Alignment.bottomRight
  );
}
