import 'package:eduzet/view/introduction_screen/introduction_screen.dart';
import 'package:eduzet/view/splash_screen/splash_screen.dart';
import 'package:eduzet/view/test/text_animation.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generatorRoute(RouteSettings settings) {
    final args = settings.arguments;
    print(settings.name);
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case 'indtroduction':
        return MaterialPageRoute(builder: (_) => IndroductionScreen());

      default:
        throw Exception('not working');
    }
  }
}
