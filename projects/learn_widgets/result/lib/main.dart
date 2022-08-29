// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:result/src/container.dart';
import 'package:result/src/padding.dart';
import 'package:result/src/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: ListTile(
              onTap: () {
                pushTo('Text Widget', LearnText());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Text Widget'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: ListTile(
              onTap: () {
                pushTo('Container Widget', LearnContainer());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Container Widget'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: ListTile(
              onTap: () {
                pushTo('Padding Widget', LearnPadding(), isCenter: false);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Padding Widget'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: ListTile(
              onTap: () {
                pushTo('Container Widget', LearnContainer());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Container Widget'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: ListTile(
              onTap: () {
                pushTo('Container Widget', LearnContainer());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Container Widget'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: ListTile(
              onTap: () {
                pushTo('Container Widget', LearnContainer());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Container Widget'),
            ),
          ),
        ],
      ),
    );
  }

  void pushTo(String title, Widget child, {bool isCenter = true}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PageWidget(
          isCentered: isCenter,
          title: title,
          child: child,
        ),
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  const PageWidget({
    Key? key,
    required this.title,
    required this.child,
    required this.isCentered,
  }) : super(key: key);

  final String title;
  final Widget child;
  final bool isCentered;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Align(
        alignment: isCentered ? Alignment.center : Alignment.topLeft,
        child: child,
      ),
    );
  }
}