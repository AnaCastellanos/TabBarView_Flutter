import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TabBarView Demo',
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: new MyHomePage(title: 'TabBar Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      child: buildScaffold(),
    );
  }

  Widget buildScaffold(){
    return Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        bottom: buildTabBar(),
      ),
      body: buildBody(),
    );
  }

  Widget buildTabBar() {
    return TabBar(
      tabs: <Widget>[
        Icon(Icons.home),
        Icon(Icons.satellite),
        Icon(Icons.shop),
      ],
    );
  }

  Widget buildBody() {
    return TabBarView(
      children: <Widget>[
        Center(child: Icon(Icons.home)),
        Center(child: Icon(Icons.satellite)),
        Center(child: Icon(Icons.shop)),
      ]
    );
  }
}
