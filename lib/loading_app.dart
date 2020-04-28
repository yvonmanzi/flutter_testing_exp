import 'package:flutter/material.dart';

class LoadingApp extends StatelessWidget {
  final Widget widget;
  LoadingApp(this.widget);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(60.0),
          child: Container(
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.rectangle),
              child: widget),
        ),
      ),
    );
  }
}
