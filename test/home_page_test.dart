import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:auth_app/pages/pages.dart';

void main() {
  group("Widget HomePage", () {
    late Widget widget;

    setUp(() {
      widget = const MaterialApp(
        home: HomePage(),
      );
    });
    testWidgets('Should render correctly', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(widget);

      expect(find.text("Hello HomePage"), findsOneWidget);
    });
  });
}
