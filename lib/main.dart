import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new ListView(
          children: <Widget>[
            new Card(
              child: new Column(
                children: <Widget>[
                  new Row(children: <Widget>[
                    new Expanded(
                      child: new Image.asset(
                        'images/MAHE.jpg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    new Expanded(
                        child: new Padding(
                          child: const Text(
                            'Taylor mourns the loss of a beloved student',
                            textScaleFactor: 1.2,
                            maxLines: 3,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                          ),
                          padding: new EdgeInsets.only(left: 20.0),),
                    flex: 3,
                    )
                  ]),
                ],
              ),
            ),
          ],
        ));
  }
}
