import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/main.dart';

void main() {
  testWidgets('MyApp has a title and a message', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp(
      title: 'T',
      message: 'M',
    ));

    //create finders
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    //verify that the widgets appear just once in the tree.
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
