import 'package:bloc_architecture_app/constants/strings.dart';
import 'package:bloc_architecture_app/presentation/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}

class AppRouter {
  static const String home = '/';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            title: Strings.homeScreenTitle,
          ),
        );
      default:
        throw const RouteException('Route not found');
    }
  }
}
