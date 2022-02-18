import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'presentation/router/app_routes.dart';
import 'presentation/theme/default_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp(
    applicationRoutes: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter applicationRoutes;
  


  const MyApp({Key? key, required this.applicationRoutes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gramophone',
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      onGenerateRoute: applicationRoutes.onGenerateRoute,
    );
  }
}


/*

*/