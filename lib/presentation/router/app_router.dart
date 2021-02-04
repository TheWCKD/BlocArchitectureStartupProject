import 'package:bloc_architecture_app/constants/strings.dart';
import 'package:bloc_architecture_app/presentation/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeScreen(
            title: Strings.homeScreenTitle,
          ),
        );
      default:
        return null;
    }
  }
}
