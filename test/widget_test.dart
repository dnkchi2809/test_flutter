import 'package:flutter_test/flutter_test.dart';

import '../stories/my_widget_stories.dart';

void main() {
  testWidgets('Test Default Story', (WidgetTester tester) async {
    await tester.pumpWidget(defaultMyWidget());

    // Perform your assertions here based on the default story
    // expect(find.text('Default Title'), findsOneWidget);
    // expect(find.b(MyCustomWidget), findsOneWidget);
    // expect(find.byKey(Key('description')), findsOneWidget);
  });

  // testWidgets('Test Custom Background Story', (WidgetTester tester) async {
  //   await tester.pumpWidget(
  //     MaterialApp(
  //       home: customTitleMyWidget(),
  //     ),
  //   );
  //
  //   // Perform your assertions here based on the custom background story
  //   expect(find.text('Custom Widget'), findsOneWidget);
  //   // expect(find.byType(MyCustomWidget), findsOneWidget);
  //   // expect(find.byKey(Key('description')), findsOneWidget);
  // });
}
