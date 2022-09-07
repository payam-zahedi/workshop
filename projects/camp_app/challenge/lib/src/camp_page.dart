import 'package:flutter/material.dart';

class CampPage extends StatelessWidget {
  const CampPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageAddress =
        'https://raw.githubusercontent.com/flutter/website/main/examples/layout/lakes/step6/images/lake.jpg';

    return Center(
      child: Text('Where should we camp this weekend?'),
    );
  }
}
