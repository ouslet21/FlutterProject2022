import 'package:flutter/material.dart';

class DancePage extends StatelessWidget {
  const DancePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text('Danse'),
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
                      Navigator.pushNamed(context, '/pay');},
                    child: Center(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                          Image.asset("images/danse_moderne.jpg"),
                          Text("Danse Moderne", style: new TextStyle(fontSize: 17.0))
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
                          Image.asset("images/hipHop.jpg"),
                          Text("Hip Hop", style: new TextStyle(fontSize: 17.0))
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
                          Image.asset("images/ballet3.jpg"),
                          Text("Ballet", style: new TextStyle(fontSize: 17.0))
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
                          Image.asset("images/Danse_irlandaise.jpg"),
                          Text("Danse Irlandaise", style: new TextStyle(fontSize: 17.0))
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
                          Image.asset("images/claquette1.jpg"),
                          Text("Claquette", style: new TextStyle(fontSize: 17.0))
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
                          Image.asset("images/swing.jpg"),
                          Text("Danse Swing", style: new TextStyle(fontSize: 17.0))
                        ])))),
          ]),
        ));
  }
}
