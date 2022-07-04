import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:auth_app/widgets/widgets.dart';
import 'package:auth_app/enums/enums.dart';

void main() {
  group("Widget HomePage", () {
    late Widget widget;
    const String defaultButtonText = "Continue with";

    setUp(() {
      widget = const MaterialApp(
        home: SignInButton(),
      );
    });
    testWidgets('Should render correctly', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(widget);
    });

    testWidgets('Should render sign in Button with default value "Google"',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(widget);
      expect(find.byType(MaterialButton), findsOneWidget);
      expect(find.text("$defaultButtonText Google"), findsOneWidget);
    });

    testWidgets('Should render Google sign in correctly', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(
        home: SignInButton(type: SignInType.google),
      ));
      expect(find.text("$defaultButtonText Google"), findsOneWidget);
      expect(find.byIcon(FontAwesomeIcons.google), findsOneWidget);
      expect(tester.widget<MaterialButton>(find.byKey(const Key("button_container"))).color,
          Colors.red);
    });

    testWidgets('Should render Apple sign in correctly', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(
        home: SignInButton(type: SignInType.apple),
      ));
      expect(find.text("$defaultButtonText Apple"), findsOneWidget);
      expect(find.byIcon(FontAwesomeIcons.apple), findsOneWidget);
      expect(tester.widget<MaterialButton>(find.byKey(const Key("button_container"))).color,
          Colors.black);
    });
  });
}
