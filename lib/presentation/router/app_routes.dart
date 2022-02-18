import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../animations/route_animation/right_left_slide.dart';
import '../pages/welcome_page.dart';
import '../pages/home_page.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => WelcomePage(screenHeight: MediaQuery.of(context).size.height,));
      case '/home_page':
        return RightLeftSlide(page:const HomePage());
      default:
    }
  }
}
