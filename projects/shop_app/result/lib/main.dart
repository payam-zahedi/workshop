// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:result/common/theme.dart';
import 'package:result/models/cart.dart';
import 'package:result/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartModel>(
          create: (context) => CartModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Shop App',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        home: const MyLogin(),
      ),
    );
  }
}
