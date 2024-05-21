import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:tugasbesar2/theme/theme_helper.dart';
import 'package:tugasbesar2/routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'tugasbesar2',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welcomeScrenScreen,
      routes: AppRoutes.routes,
    );
  }
}
