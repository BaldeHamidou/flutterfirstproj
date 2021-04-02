//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MonApplication());
}

class MonApplication extends StatefulWidget {
  @override
  _MonApplicationState createState() => _MonApplicationState();
}

// Changement de l'Etat

class _MonApplicationState extends State<MonApplication> {
  String ttext = '';
  @override
  void initState() {
    ttext = 'Appuyer sur le Bouton';
    super.initState();
  }

  void changerEtat() {
    setState(() {
      ttext = 'Le Bouton est appuyé';
    });
  }

  @override
  Widget build(BuildContext context) {
    //final deviceWidth = MediaQuery.of(context).size;
    return new MaterialApp(
        //title: 'Statfule Widget',
        home: new Scaffold(
            backgroundColor: Colors.white,
            //*****************************AppBAR******************* */
            appBar: AppBar(
                toolbarHeight: 210,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30))),
                title: Container(
                  alignment: Alignment.center,
                  //alignment: Alignment(0, 2),
                  child: Column(
                      verticalDirection: VerticalDirection.down,
                      children: <Widget>[
                        SizedBox(
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                            /*
                          backgroundImage: AssetImage(
                            ''
                          ),*/
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "NOM PRENOM",
                          style: TextStyle(),
                        ),
                        SizedBox(height: 13),
                        Text(
                          "Edite Profile",
                          style: TextStyle(color: Colors.black87, fontSize: 15),
                        )
                      ]),
                ),
                //centerTitle: true,
                backgroundColor: Color.fromARGB(255, 0x4b, 0x51, 0x0c),
                actions: <Widget>[
                  IconButton(
                      icon: Icon(Icons.login),
                      alignment: Alignment.topRight,
                      onPressed: () {
                        // Action to do on press
                      })
                ],
                // Space betwwen AppBar and Body
                bottom: PreferredSize(
                  child: Stack(
                    // alignment: ,
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        height: 50,
                        //color: Color.fromARGB(250, 0x4b, 0x51, 0x0c),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //color: Colors.amber,
                          color: Color.fromARGB(250, 0x4b, 0x51, 0x0c),
                        ),
                      ),
                      Positioned(
                        bottom: -30,
                        left: 60,
                        child: Container(
                          height: 60,
                          width: 300,
                          //color: Colors.white,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            //color: Colors.white,
                            color: Color.fromARGB(250, 0xF2, 0xF2, 0xEB),
                          ),
                        ),
                      )
                    ],
                  ),
                  preferredSize: Size(0, 20),
                )),

            //*************************Body******************* */
            body: Container(
              color: Color.fromARGB(250, 0xF2, 0xF2, 0xEB),

              // **************to be removed  **************
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              /*   decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.red,
              )), */
              //*********************************************
              child: Column(
                children: <Widget>[
                  Container(
                    child: SizedBox(height: 50),
                  ),

                  // Boutton planning

                  Container(
                    height: 40,
                    width: 155,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.amber[50],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            /* decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.black, 
                            )),*/
                            // padding: EdgeInsets.all(5),
                            child: Text(
                          "New Planning",
                          //textAlign: TextAlign.center,
                        )),
                        Container(
                            //alignment: Alignment.topRight,
                            child: IconButton(
                                icon: Icon(Icons.date_range), onPressed: () {}))
                      ],
                    ),
                  ),

                  // Fin boutton planning
                  //
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text("All Appointments"),
                  ),

                  SizedBox(height: 10),
                  Container(
                    //height: 200, //TO BE REMOVED
                    width: 370, //TO BE REMOVED
                    padding: EdgeInsets.all(10),
                    //alignment: Alignment.center,
                    decoration: BoxDecoration(
                      /*  border: Border.all(
                        color: Colors.black,
                      ), */
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),

                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        SizedBox(height: 10),
                        rendezVousProchain,
                        SizedBox(height: 10),
                        Container(
                          height: 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(height: 10),
                        rendezVousValider,
                        SizedBox(height: 10),
                        rendezVousAnnuller,
                        //SizedBox(height: 10),
                        //rendezVous,
                      ],
                    ),
                  )
                ],
              ),
              //padding: ,
              // ListWheelScrollView(children: [], itemExtent: 42,)
            )));
  }
}

//#######################################  VERSION V2.1  ###################################################

//************************************************************** */
// Grand widget pour afficher les infor comme titre, info user, ...
//************************************************************** */
Widget titreSession = Container(
  height: 200,
  //height: MediaQuery.of(context).size.width,
  width: 200,
  margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 5),
  child: Stack(
    children: [
      //Center(imageDeProfil),
      imageDeProfil,
      //petitButton,
    ],
  ),
  decoration: BoxDecoration(
      color: Colors.amber,
      boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(10, 10, 27, 3),
            blurRadius: 1,
            offset: Offset(0, 0))
      ],
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            //Colors.red[900],
            Colors.blue[800],
            Colors.blue[50],
            //Colors.yellow[10]
          ])),
);
//****************************************************************** */

//***************************************************************** */
// Widget pour placer les element en ligne
//**************************************************************** */
Widget iconSession = Container(
  height: 50,
  margin: EdgeInsets.all(10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
          icon: Icon(Icons.mail, color: Colors.amber, size: 40),
          //iconSize: 40,
          splashRadius: 20,
          onPressed: () {}),
      petitButton,
      petitButton,
    ],
  ),
);
//****************************************************************** */

//**************************************************************** */
// Widget pour gros buton
//***************************************************************** */
Widget buttonPersonal = Container(
  margin: EdgeInsets.all(5.0),
  width: 200,
  height: 300,
  //color: Colors.green,
  padding: EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Rendez-vous",
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
      Text(
        "Rappel",
        style: TextStyle(color: Colors.black, fontSize: 10),
      ),
      petitButton,
      petitButtonText,
    ],
  ),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(10, 10, 27, 2),
          blurRadius: 5,
          offset: Offset(0, 1))
    ],
  ),
);
//************************************************************************ */

//********************************************************************* */
//Widget pour placer les element en ligne
//********************************************************************* */

Widget ligneElement = Container(
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buttonPersonal,
        SizedBox(width: 10.0),
        //buttonPersonal,
        //SizedBox(width: 10.0),
        //buttonPersonal,
      ],
    ));
//******************************************************************** */

//******************************************************************* */
// Widget pour affiche un petit buton
//******************************************************************* */
Widget petitButton = Container(
  margin: EdgeInsets.all(5.0),
  width: 40,
  //color: Colors.green,
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(10, 10, 27, 2),
          blurRadius: 5,
          offset: Offset(3, 0))
    ],
  ),
);
//********************************************************************* */

//******************************************************************** */
// Widget pour petit bouton
//********************************************************************* */
Widget petitButtonText = Container(
  margin: EdgeInsets.all(5.0),
  width: 40,
  //color: Colors.green,
  padding: EdgeInsets.all(5),
  child: Center(
      child: Text(
    "OK",
    style: TextStyle(color: Colors.white, fontSize: 10),
    //textAlign: TextAlign.justify,
  )),
  decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(5),
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(10, 10, 27, 2),
          blurRadius: 5,
          offset: Offset(3, 0))
    ],
  ),
);
//****************************************************************************** */

//****************************************************************************** */
// Widget pour image de Profil
//****************************************************************************** */
Widget imageDeProfil = Container(
  alignment: Alignment.center,
  //margin: EdgeInsets.all(10),
  height: 80,
  width: 80,
  padding: EdgeInsets.all(5),
  decoration: BoxDecoration(
    color: Colors.white,
    // borderRadius: BorderRadius.circular(200),
    image: DecorationImage(
      image: AssetImage(
        'img/profil.jpg',
      ),
      //fit: BoxFit.fill,
    ),
    shape: BoxShape.circle,
  ),
);

//******************************************************************************* */

Widget rendezVousProchain = Container(
  padding: EdgeInsets.all(8),
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: Colors.black,
    ),
    borderRadius: BorderRadius.circular(20),
  ),
  height: 70,
  //alignment: Alignment.center,
  child:
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
    Container(
        width: 100,
        child: Column(
          children: [
            Container(
              child: Text(
                "Date",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Text(
                "DD/MM/YYYY",
                style: TextStyle(fontSize: 10),
              ),
            )
          ],
        )),
    Container(
      child: Text("HH:MM", style: TextStyle(fontSize: 25)),
    ),
  ]),
);

Widget rendezVousValider = Container(
  padding: EdgeInsets.all(8),
  decoration: BoxDecoration(
    color: Colors.green[300],
    border: Border.all(
      color: Colors.black,
    ),
    borderRadius: BorderRadius.circular(20),
  ),
  height: 70,
  //alignment: Alignment.center,
  child:
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
    Container(
        width: 100,
        child: Column(
          children: [
            Container(
              child: Text(
                "Date",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Text(
                "DD/MM/YYYY",
                style: TextStyle(fontSize: 10),
              ),
            )
          ],
        )),
    Container(
      child: Text("HH:MM", style: TextStyle(fontSize: 25)),
    ),
  ]),
);

Widget rendezVousAnnuller = Container(
  padding: EdgeInsets.all(8),
  decoration: BoxDecoration(
    color: Colors.red[300],
    border: Border.all(
      color: Colors.black,
    ),
    borderRadius: BorderRadius.circular(20),
  ),
  height: 70,
  //alignment: Alignment.center,
  child:
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
    Container(
        width: 100,
        child: Column(
          children: [
            Container(
              child: Text(
                "Date",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Text(
                "DD/MM/YYYY",
                style: TextStyle(fontSize: 10),
              ),
            )
          ],
        )),
    Container(
      child: Text("HH:MM", style: TextStyle(fontSize: 25)),
    ),
  ]),
);

/*
import 'dart:async';
import 'dart:convert';
import 'lib.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> createAlbum(String title) async {
  final http.Response response = await http.post(
    'https://jsonplaceholder.typicode.com/albums',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );

  if (response.statusCode == 201) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create album.');
  }
}

class Album {
  final int id;
  final String title;

  Album({this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      title: json['title'],
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  Future<Album> _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Create Data Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_futureAlbum == null)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      controller: _controller,
                      decoration: InputDecoration(hintText: 'Enter Title'),
                    ),
                    ElevatedButton(
                      child: Text('Create Data'),
                      onPressed: () {
                        setState(() {
                          _futureAlbum = createAlbum(_controller.text);
                        });
                      },
                    ),
                  ],
                )
              : FutureBuilder<Album>(
                  future: _futureAlbum,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(snapshot.data.title);
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }

                    return CircularProgressIndicator();
                  },
                ),
        ),
      ),
    );
  }
}
*/

/*
import 'package:flutter/material.dart';

import 'pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calandar",
        theme: ThemeData(primarySwatch: Colors.red),
        home: LoginPage());
  }
}

*/
