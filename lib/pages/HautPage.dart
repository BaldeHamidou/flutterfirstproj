import 'package:flutter/material.dart';

class HautPage {
  String titre;
  double largeurAppBar;

  HautPage(double largeurAppBar) {
    this.largeurAppBar = largeurAppBar;
  }

  AppBar hautDePage(titre) {
    return AppBar(
      //Boutton de Menu
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.blue,
              size: 40,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      actions: <Widget>[
        new IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.blue,
              size: 40,
            ),
            tooltip: 'Rechercher dans cette page',
            onPressed: () {}),
        //new IconButton(icon: new Icon(Icons.verified_user), onPressed: () {})
      ],
      backgroundColor: Colors.white,
      title: Text(
        titre,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black54),
      ),
      centerTitle: true,
      toolbarHeight: largeurAppBar,
    );
  }
}
