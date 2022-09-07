import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:result/src/provider/salary_provider.dart';
import 'package:result/src/widget/my_account.dart';
import 'package:result/src/widget/my_slider.dart';

void main() {
  runApp(const ProviderApp());
}

class ProviderApp extends StatelessWidget {
  const ProviderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return SalaryProvider(20);
      },
      /// we must wrap our material app with Provider or MultiProvider
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyPage(),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Provider'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // The Account component
          MyAccount(),
          // the Slider component that handle salary changes
          MySlider(),
        ],
      ),
    );
  }
}
