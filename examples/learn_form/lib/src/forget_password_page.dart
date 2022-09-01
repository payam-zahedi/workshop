import 'package:flutter/material.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Forget Password Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: SizedBox(
                width: 200,
                height: 150,
                child: FlutterLogo(style: FlutterLogoStyle.horizontal),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter valid email id as abc@gmail.com',
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Submit email',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
