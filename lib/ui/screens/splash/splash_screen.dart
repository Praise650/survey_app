import 'package:flutter/material.dart';

import '../../../Navigation/route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
          () => Navigator.pushNamed(
        context,
        RouteManager.homePage,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.deepPurple],
          ),
        ),
        // color: Colors.red,
        alignment: Alignment.center,
        child: const Text(
          //TODO:add 'Welcome to Sorvaay' to  app bar of homepage
          'Sorvaay',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 38,
          ),
        ),
      ),
    );
  }
}
