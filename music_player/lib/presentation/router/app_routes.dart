import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../animations/route_animation/right_left_slide.dart';
import '../pages/homepage.dart';
import '../pages/testpage.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/testPage':
        return RightLeftSlide(page: const TestPage());
      default:
    }
  }
}
