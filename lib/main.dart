import 'package:flutter/material.dart';
import './pages/Home.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  bool dark = false;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void changeTheme() {
    setState(() {
      widget.dark = !widget.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC',
      debugShowCheckedModeBanner: false,
      theme: theme(dark: widget.dark),
      home: Home(changeTheme: changeTheme),
    );
  }
}
