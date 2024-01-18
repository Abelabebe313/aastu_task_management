import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:task_managment_aastu/features/tasks/presentation/screen/bottom_navigation.dart';
import 'package:task_managment_aastu/features/tasks/presentation/screen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    checkFirstVisit();
  }

  

  Future<void> checkFirstVisit() async {
    final prefs = await SharedPreferences.getInstance();
    final visitedBefore = prefs.getBool('visited_before') ?? false;

    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (visitedBefore) {
          // If visited before, navigate to Home()
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const BottomBar()),
          );
        } else {
          // If first visit, navigate to OnBoardingScreen()
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const BottomBar()),
          );

          // Set visited_before flag to true for future visits
          prefs.setBool('visited_before', true);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(color: Colors.white70),
        child: Center(
          child: Container(
            width: 500,
            height: 250,
            margin: const EdgeInsets.only(bottom: 50),
            child: Image.asset('assets/images/aastu.png'),
          ),
        ),
      ),
    );
  }
}
