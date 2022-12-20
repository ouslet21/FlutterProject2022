import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Musique'),
          backgroundColor: Color.fromARGB(255, 4, 24, 41),
        ),
        backgroundColor: Color.fromARGB(255, 183, 213, 236),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: GridView.count(crossAxisCount: 2, children: <Widget>[
            Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/pay');
                    },
                    child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                          Image.asset("images/saxophone1.jpg"),
                          Text("Saxophone",
                              style: new TextStyle(fontSize: 17.0))
                        ])))),
            Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/pay');
                    },
                    child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                          Image.asset("images/piano1.jpg"),
                          Text("Piano", style: new TextStyle(fontSize: 17.0))
                        ])))),
            Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/pay');
                    },
                    child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                          Image.asset("images/trombone.jpg"),
                          Text("Trombone", style: new TextStyle(fontSize: 17.0))
                        ])))),
            Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/pay');
                    },
                    child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                          Image.asset("images/guittare.jpg"),
                          Text("guitare", style: new TextStyle(fontSize: 17.0))
                        ])))),
            Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/pay');
                    },
                    child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                          Image.asset("images/batterie1.png"),
                          Text("Batterie", style: new TextStyle(fontSize: 17.0))
                        ])))),
            Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, '/pay');
                    },
                    child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                          Image.asset("images/violon.jpeg"),
                          Text("Violon", style: new TextStyle(fontSize: 17.0))
                        ])))),
          ]),
        ));
  }
}
