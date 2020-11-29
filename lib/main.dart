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
    return new MaterialApp(
        title: 'Statfule Widget',
        home: new Scaffold(
            body: Column(
          children: [
            titreSession,
            //SizedBox(height: 5.0),
            iconSession,
            //buttonPersonal,
            ligneElement,
          ],
        )));
  }
}

//************************************************************** */
// Grand widget pour afficher les infor comme titre, info user, ...
//************************************************************** */
Widget titreSession = Container(
  height: 200,
  //padding: EdgeInsets.all(10.0),
  margin: EdgeInsets.all(10.0),
  //width: EdgeInsets,
//color: Colors.amber,
  child: Stack(
    children: [
      Center(),
      imageDeProfil,
    ],
  ),
  decoration: BoxDecoration(
      color: Colors.amber,
      boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(10, 10, 27, 3),
            blurRadius: 10,
            offset: Offset(0, 10))
      ],
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            //Colors.red[900],
            Colors.yellow[800],
            //Colors.green[900],
            Colors.yellow[600]
          ])),
);
//****************************************************************** */

//***************************************************************** */
// Widget pour placer les element en ligne
//**************************************************************** */
Widget iconSession = Container(
  height: 50,
  margin: EdgeInsets.all(10.0),
  //padding: EdgeInsets.all(10.0),
  //color: Colors.blue,
  /* decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.red[50],
            Colors.grey
            //Colors.blue,
          ])),*/
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      /*Container(
          margin: EdgeInsets.all(5.0),
          //alignment: Alignment.center,
          //color: Colors.green,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.green),
          //margin: EdgeInsets.all(5),
          child: Center(
            IconButton(
              icon: Icon(Icons.mail),
              //iconSize: 20,
              //alignment: Alignment,
              iconSize: 40,
              //padding: EdgeInsets.all(10),
              //padding: EdgeInsetsGeometry.infinity,
              onPressed: () {}))),*/
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
  width: 150,
  height: 250,
  //color: Colors.green,
  padding: EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Prochain Rendz-vous",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      Text(
        "Rappel",
        style: TextStyle(color: Colors.white, fontSize: 10),
      ),
      petitButton,
      petitButtonText,
    ],
  ),
  decoration: BoxDecoration(
    color: Colors.redAccent,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(10, 10, 27, 2),
          blurRadius: 5,
          offset: Offset(0, 3))
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
      children: [
        buttonPersonal,
        SizedBox(width: 10.0),
        buttonPersonal,
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
//                   Widget pour image de Profil
//****************************************************************************** */
Widget imageDeProfil = Container(
  margin: EdgeInsets.all(10),
  height: 80,
  width: 80,
  //alignment: Alignment.topLeft,

  //child: Image.asset(),
  decoration: BoxDecoration(
    color: Colors.white,
    /*
    image: DecorationImage(
      image: Image.asset('img/calender.png',),
    ),*/
    //shape: Border.all(width: 50),
    //border: Border.all(
    //width: 130,
    //color: Theme.of(context).scaffoldBackgroundColor,
    //  ),
    shape: BoxShape.circle,

    //shape: ,

    /*image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.google.com/search?q=image&sxsrf=ALeKk02FxIGFZrFE_eKOr8b24hWpfBGEBQ:1606565626741&source=lnms&tbm=isch&sa=X&ved=2ahUKEwim0_Wrm6XtAhXSxoUKHXj7CA4Q_AUoAXoECAQQAw&biw=1536&bih=666#imgrc=_2JirDBiGzi3lM'),
            )),*/
  ),
  child: Image.asset(
    'img/calender.png',
    alignment: Alignment.center,
  ),
);

//******************************************************************************* */

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
