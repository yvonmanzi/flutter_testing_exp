import 'package:flutter/material.dart';

class NamesLIst extends StatelessWidget {
  final textOneKey = Key('firstName');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Text(
          'Yvon',
          key: textOneKey,
        ),
        Text(
          'Yves',
          key: Key('secondName'),
        ),
        Text(
          'Hirwa',
          key: Key('thirdName'),
        ),
        Text(
          'Mbuto',
          key: Key('fourthName'),
        )
      ]),
    );
  }
}

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NamesLIst(),
      title: 'Testing Using Keys',
    );
  }
}
