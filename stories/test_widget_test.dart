import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_flutter/layout/focus.dart';

import 'my_widget_stories.dart'; // Import your stories file

void main() {
  testWidgets('Test Default Story', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: defaultMyWidget(),
      ),
    );

    // Perform your assertions here based on the default story
    expect(find.text('Default Widget'), findsOneWidget);
    expect(find.byType(MyCustomWidget), findsOneWidget);
    expect(find.byKey(Key('default_background')), findsOneWidget);
  });

  testWidgets('Test Custom Background Story', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: customTitleMyWidget(),
      ),
    );

    // Perform your assertions here based on the custom background story
    expect(find.text('Custom Background Widget'), findsOneWidget);
    expect(find.byType(MyCustomWidget), findsOneWidget);
    expect(find.byKey(Key('custom_background')), findsOneWidget);
  });
}
