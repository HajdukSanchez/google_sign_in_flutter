import 'package:flutter/material.dart';

import 'package:auth_app/routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authentication App',
      routes: routes,
      initialRoute: Routes.home.name,
    );
  }
}
