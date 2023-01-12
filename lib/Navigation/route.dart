import 'package:flutter/material.dart';
import 'package:survey_app/core/models/option_model.dart';
import 'package:survey_app/ui/screens/homepage/homepage.dart';
import 'package:survey_app/ui/screens/question_page/question_screen.dart';
import 'package:survey_app/ui/screens/result_page/result_screen.dart';
import 'package:survey_app/ui/screens/splash/splash_screen.dart';

class RouteManager {
  static const String splashScreen = '/';
  static const String loginPage = '/loginPage';
  static const String homePage = '/homePage';
  static const String questionPage = '/questionPage';
  static const String resultPage = '/resultPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const Homepage(),
        );
      case questionPage:
        return MaterialPageRoute(
          builder: (context) => const QuestionScreen(),
        );
      case resultPage:
        return MaterialPageRoute(
          builder: (context) => ResultScreen(
            result: settings.arguments as List<OptionModel>?,
          ),
          settings: settings,
        );
      default:
        throw const FormatException('Route not found!, check routes again');
    }
  }
}
