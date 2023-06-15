import 'package:flutter/material.dart';
import 'package:groceriesapp/menu.dart';
import 'package:groceriesapp/pages/loadingPage.dart';

void main() { 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Groceries App",
      home: loadingPage(),
    );
  }
}
