import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/names_list.dart';

void main() {
  testWidgets("testing ListApp using keys for elements identification",
      (WidgetTester tester) async {
    final key = Key('firstName');
    await tester.pumpWidget(ListApp());
    final keyFinder = find.byKey(key);

    expect(keyFinder, findsOneWidget);
  });
}
