import 'package:flutter/material.dart';
import 'package:tugasbesar2/presentation/welcome_scren_screen/welcome_scren_screen.dart';
import 'package:tugasbesar2/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:tugasbesar2/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:tugasbesar2/presentation/home_screen/home_screen.dart';
import 'package:tugasbesar2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeScrenScreen = '/welcome_scren_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homeScreen = '/home_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    welcomeScrenScreen: (context) => WelcomeScrenScreen(),
    signInScreen: (context) => SignInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    homeScreen: (context) => HomeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
