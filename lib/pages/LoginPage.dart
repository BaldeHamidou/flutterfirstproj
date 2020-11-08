import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String bar_haut = "Page connexion";
    return Scaffold(
        appBar: AppBar(
          //Boutton de Menu
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.search),
                tooltip: 'Rechercher dans cette page',
                onPressed: () {}),
            new IconButton(
                icon: new Icon(Icons.verified_user), onPressed: () {})
          ],
          backgroundColor: Colors.redAccent,
          title: Text(affichage_screen(bar_haut)),
          centerTitle: true,
        ),
        body: Center(
            //heightFactor: 200,
            ));
  }
}

//Function to manage String
String affichage_screen(var textAafficher) {
  return textAafficher;
}
