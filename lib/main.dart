import 'package:flutter/material.dart';
import 'tabHome.dart';
import 'tabEvent.dart';
import 'tabInbox.dart';
import 'tabSettings.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final tabController = new DefaultTabController(
      length: 4,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Aquí los tabs"),
          bottom: new TabBar(
            indicatorColor: Colors.red,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home),text: "Home"),
              new Tab(icon: new Icon(Icons.inbox),text: "Inbox"),
              new Tab(icon: new Icon(Icons.event),text: "Event"),
              new Tab(icon: new Icon(Icons.settings),text: "Settings")
            ]),
        ),
        body: new TabBarView(
          children: <Widget>[
            new TabHome(),
            new TabInbox(),
            new TabEvent(),
            new TabSettings()
          ],
        ),
      ),
    );
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: tabController,
    );
  }
}