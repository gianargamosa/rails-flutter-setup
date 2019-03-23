import 'package:flutter/material.dart';
import 'package:my_app/screens/auth/index.dart';
import 'package:my_app/screens/profile/index.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  MyApptWidgetState createState() => new MyApptWidgetState();
}

class MyApptWidgetState extends State<MyApp> {
  ThemeData get _themeData => new ThemeData(
    primaryColor: Colors.cyan,
    accentColor: Colors.indigo,
    scaffoldBackgroundColor: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MyApp',
      theme: _themeData,
      routes: {
        '/': (BuildContext context) => new Auth(),
        '/profile': (BuildContext context) => new Profile()
      },
    );
  }
}


