import 'package:flutter/material.dart';
import './playlist.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Padding(padding: const EdgeInsets.all(20.0),),
            new ListTile(
              leading: new Icon(Icons.home),
              title: new Text("Home", style: new TextStyle(fontSize: 18.0),),
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.video_library),
              title: new Text("Flutter", style: new TextStyle(fontSize: 18.0),),
              onTap: ()=>Navigator.of(context).push(new MaterialPageRoute(
                builder:(BuildContext context)=>new Playlist(url:"https://flutterlistyoutubes.herokuapp.com/", title:"Flutter Tutorial")
              )),
            )
          ],
        )
      )
    );
  }
}
