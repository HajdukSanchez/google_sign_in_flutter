import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    });

    testWidgets('Should render appBar with logout icon and title', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(widget);

      expect(find.byType(AppBar), findsOneWidget);
      expect(find.text("Google / Apple Auth"), findsOneWidget);
      expect(find.byIcon(FontAwesomeIcons.arrowRightFromBracket), findsOneWidget);
    });

    testWidgets('Should render 2 sign in Buttons', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(widget);

      expect(tester.widget<Column>(find.byKey(const Key("buttons_container"))).children.length, 2);
    });
  });
}
