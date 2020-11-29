import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hnapp/pages/HautPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String barHaut = "Page";
    double largeurAppBar = 50;
    HautPage hautecran = new HautPage(largeurAppBar);
    return Scaffold(
      appBar: hautecran.hautDePage(barHaut),
      body: Text('Hello World'),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: Text("DO IT"),
        onPressed: () {
          print("Action Button on pressed!!!");
        },
      ),
      bottomNavigationBar: piedDePage(),
    );
  }
}

BottomNavigationBar piedDePage() {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.blueAccent), label: 'Home'),
      BottomNavigationBarItem(
          icon: Icon(Icons.menu, color: Colors.blueAccent), label: 'Menu'),
      BottomNavigationBarItem(
          icon: Icon(Icons.announcement, color: Colors.blueAccent),
          label: 'Notification')
    ],
    backgroundColor: Colors.blue[00],
  );
}
