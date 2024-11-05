import 'package:flutter/material.dart';
import 'package:tubes_aplikasi/features/home/screens/home_screen.dart';
import 'package:tubes_aplikasi/features/onboarding/screens/welcome_screen.dart';

class RouteUtils {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (context) => const WelcomeScreen(),
      '/home': (context) => const HomeScreen(),
    };
  }
}
