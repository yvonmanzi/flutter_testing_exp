import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;

  TextWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(text)),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing Demo',
      home: TextWidget(text: 'hello'),
    );
  }
}
