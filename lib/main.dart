import 'package:flutter/material.dart';
import './mydrawer.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Tutorial Playlist Youtube',
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new MyDrawer(),
      backgroundColor: Colors.transparent,
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("./assets/img/langit.jpeg"), fit: BoxFit.cover
          )
        ),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new SizedBox(
                width: 150.0,
                height: 150.0,
                child: new Image.asset("./assets/img/flutter.png"),
              ),
              new Text("Kang Anton Tutorial", style: new TextStyle(fontSize:16.0, color: Colors.white),)
            ],
          ),
        ),
      )
    );
  }
}