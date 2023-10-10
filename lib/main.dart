import 'package:flutter/material.dart';
import 'package:news/pages/home.dart';

import 'model/post_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ),
        home: Home()
    );
  }
}


