import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/text_widget.dart';

void main() {
  testWidgets("testing TextWidget", (WidgetTester tester) async {
    await tester.pumpWidget((MaterialApp(home: TextWidget(text: "hello"))));

//    find the widget in the widget tree
    final textWidgetFinder = find.text('hello');

    //verify the nature of its existence
    expect(textWidgetFinder, findsOneWidget);
  });
}
