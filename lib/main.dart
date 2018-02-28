// >> Dependencies
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

// >> Variables
var httpClient = new HttpClient();

// >> Functions
void main() { // App paths
  runApp(new MaterialApp(
    home: new App(),
    routes: <String, WidgetBuilder> {
//      "login":
    },
  ));
}

// >> Classes
class App extends StatelessWidget { // App setup
  @override

  final title = "Mijn LCL";

  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.pinkAccent,
      ),
      home: new Home(title: title + " - Home"),
    );
  }
}

class Home extends StatefulWidget { // Setup home screen
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> { // Settings of home screen
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      backgroundColor: Colors.grey[200],
      body: new Container(
        child: new Card(
          child: new ListTile(
            title: new Text(
                "Hello world",
                style: const TextStyle(fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}