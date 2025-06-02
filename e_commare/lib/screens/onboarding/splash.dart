import 'dart:async';

import 'package:e_commare/constants/constants.dart';
import 'package:e_commare/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 5),
      () => Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => OnboardingScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkWhite,
      body: Center(
        child: Text(
          "E-Commerce",
          style: TextStyle(color: green, fontSize: fontxl, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
