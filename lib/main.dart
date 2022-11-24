import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Navigation/route.dart';
import 'ui/screens/question_page/view_model/question_screen_view_model.dart';
import 'ui/screens/result_page/view_model/result_screen_view_model.dart';
import 'ui/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<QuestionScreenViewModel>(
          create: (_) => QuestionScreenViewModel(),
        ),
        ChangeNotifierProvider<ResultScreenViewModel>(
          create: (_) => ResultScreenViewModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Survey App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RouteManager.splashScreen,
        onGenerateRoute: RouteManager.generateRoute,
      ),
    );
  }
}