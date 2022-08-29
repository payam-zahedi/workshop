import 'package:flutter/material.dart';

class LearnImage extends StatelessWidget {
  const LearnImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Container(
        width: 300,
        height: 300,
        alignment: Alignment.center,
        color: Colors.blue,
        child: Image.network(
          'https://blog.faradars.org/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2020/12/Flutter-nice-cover-photo.jpg.webp',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
