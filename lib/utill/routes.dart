import 'package:eduzet/view/introduction_screen/introduction_screen.dart';
import 'package:eduzet/view/otp_screen.dart';
import 'package:eduzet/view/otp_send_screen.dart';
import 'package:eduzet/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generatorRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case 'indtroduction':
        return MaterialPageRoute(builder: (_) => const IndroductionScreen());
      case 'otp_screen':
        return MaterialPageRoute(builder: (_) => OtpScreen());
      case 'otp':
        return MaterialPageRoute(builder: (_) => Otp());

      default:
        throw Exception('not working');
    }
  }
}

class SizeTransition1 extends PageRouteBuilder {
  final Widget page;

  SizeTransition1(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(milliseconds: 1000),
          reverseTransitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(curve: Curves.fastLinearToSlowEaseIn, parent: animation, reverseCurve: Curves.fastOutSlowIn);
            return Align(
              alignment: Alignment.bottomCenter,
              child: SizeTransition(
                sizeFactor: animation,
                axisAlignment: 0,
                child: page,
              ),
            );
          },
        );
}
