import 'package:flutter/material.dart';
import 'package:result/src/forget_password_page.dart';
import 'package:result/src/home_page.dart';
import 'package:result/src/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
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
            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter secure password',
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ForgetPasswordPage()),
                );
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const RegisterPage()),
                );
              },
              child: const Text(
                'New User? Create Account',
                style: TextStyle(color: Colors.black54),
              ),
            )
          ],
        ),
      ),
    );
  }
}
