import 'package:flutter/material.dart';

import 'package:auth_app/pages/pages.dart';

/// ### Enums for pages name routes
enum Routes {
  /// Home route
  home
}

/// ### Routes of the application
Map<String, Widget Function(BuildContext)> routes = {
  Routes.home.name: (context) => const HomePage(),
};
