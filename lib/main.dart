import 'package:flutter/material.dart';
import 'package:flutter_testing/loading_app.dart';

void main() {
  runApp(LoadingApp());
}

class MyApp extends StatelessWidget {
  final String title;
  final String message;

  MyApp({Key key, @required this.title, @required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Scaffold(
          body: Center(
            child: Text(message),
          ),
        ),
      ),
    );
  }
}
