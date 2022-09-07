import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//screen
class FollowUsScreen extends StatefulWidget {
  const FollowUsScreen({Key? key}) : super(key: key);

  @override
  _FollowUsScreenState createState() => _FollowUsScreenState();
}

/// use [FontAwesomeIcons] for social media items

//screen
class _FollowUsScreenState extends State<FollowUsScreen> {
  //Main widget
  @override
  Widget build(BuildContext context) {
    Color socialBackground = Colors.grey.withAlpha(25);

    return Scaffold(
      //screen app bar (header)
      appBar: AppBar(),
      //screen app body
      body: const Center(child: Text('Make a Follow us screen')),
    );
  }
}
