import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/loading_app.dart';

void main() {
  testWidgets("tesing LoadingApp", (WidgetTester tester) async {
    final childWidget = CircularProgressIndicator();
    //how can you test if you are not passing the childWidget in here? is there some other way? huh?
//    figure out what i can learn from text_widget test.
    await tester.pumpWidget(LoadingApp(childWidget));

    final childWidgetFinder = find.byWidget(childWidget);
    expect(childWidgetFinder, findsOneWidget);
  });
}
