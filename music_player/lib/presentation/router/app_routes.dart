import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/presentation/animations/route_animation/right_left_slide.dart';
import 'package:music_player/presentation/animations/route_animation/slide_up.dart';
import 'package:music_player/presentation/pages/homepage.dart';
import 'package:music_player/presentation/pages/testpage.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/testPage':
        return RightLeftSlide(page: TestPage());
      default:
    }
  }
}
