import 'package:flutter/material.dart';
import 'package:result/src/align.dart';
import 'package:result/src/button.dart';
import 'package:result/src/center.dart';
import 'package:result/src/column.dart';
import 'package:result/src/container.dart';
import 'package:result/src/icon.dart';
import 'package:result/src/image.dart';
import 'package:result/src/padding.dart';
import 'package:result/src/row.dart';
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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Widgets Project'),
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
                pushTo('Center Widget', LearnCenter(), isCenter: false);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Center Widget'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: ListTile(
              onTap: () {
                pushTo('Align Widget', LearnAlign(), isCenter: false);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Align Widget'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: ListTile(
              onTap: () {
                pushTo('Icon Widget', LearnIcon());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Icon Widget'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: ListTile(
              onTap: () {
                pushTo('Image Widget', LearnImage());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Image Widget'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: ListTile(
              onTap: () {
                pushTo('Row Widget', LearnRow());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Row Widget'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: ListTile(
              onTap: () {
                pushTo('Column Widget', LearnColumn());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Column Widget'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: ListTile(
              onTap: () {
                pushTo('Button Widget', LearnButton());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.grey, width: 2),
              ),
              tileColor: Colors.amber.shade200,
              title: Text('Button Widget'),
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
    Widget content = child;

    if (isCentered) content = Center(child: content);

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: content,
    );
  }
}
